// Cube slices run horizontally; stocks occupy 33-row strips.
static const float FilmCubeSize = 33;
static const float2 FilmAtlasSize = float2(1089, 1320);
// Read16 combines high/low bytes stored in the two atlas halves.
float3 Read16(sampler2D s, float2 uv)
{
    return (tex2Dlod(s, float4(uv, 0, 0)).rgb * 256 + tex2Dlod(s, float4(uv + float2(0, .5), 0, 0)).rgb) /
           257;
}
float3 Cube(sampler2D s, float3 c)
{
    float3 p = saturate(c) * (FilmCubeSize - 1);
    float z = floor(p.z);
    float zn = min(z + 1, FilmCubeSize - 1);
    float2 a = float2(z * FilmCubeSize + p.x + .5, Stock * FilmCubeSize + p.y + .5) / FilmAtlasSize;
    float2 b = float2(zn * FilmCubeSize + p.x + .5, Stock * FilmCubeSize + p.y + .5) / FilmAtlasSize;
    return lerp(Read16(s, a), Read16(s, b), frac(p.z));
}
float3 Curve(float3 e, bool warped)
{
    float3 u = saturate((e + 10) / 14);
    float y = (Stock * 2 + (warped ? 1 : 0) + .5) / 80;
    float3 c = float3(Read16(CurveS, float2((u.r * 2047 + .5) / 2048, y)).r,
                      Read16(CurveS, float2((u.g * 2047 + .5) / 2048, y)).g,
                      Read16(CurveS, float2((u.b * 2047 + .5) / 2048, y)).b);
    return c * 6.1 - .1;
}
float PixelUM()
{
    return Format * 1000.0 / max(BUFFER_WIDTH, BUFFER_HEIGHT);
}
void ExposePS(float4 p : SV_Position, float2 uv : TEXCOORD, out float4 raw : SV_Target0)
{
    float3 rgb = 0;
    [branch] if (LensActive())
    {
        rgb = tex2Dlod(OptH0S, float4(uv, 0, 0)).rgb;
    }
    else rgb = SceneLinear(uv);
    [branch] if (FlareActive())
    {
        float3 flare = tex2Dlod(FlareAS, float4(uv, 0, 0)).rgb;
        [branch] if (LensDirtAmount > 0)
        {
            float aspect = BUFFER_WIDTH / (float)BUFFER_HEIGHT, maskAspect = 3840.0 / 2160;
            float2 crop =
                aspect > maskAspect ? float2(1, maskAspect / aspect) : float2(aspect / maskAspect, 1);
            float2 q = .5 + (uv - .5) * crop / max(LensDirtScale, 1);
            float dirt = dot(Decode(tex2Dlod(LensDirtS, float4(q, 0, 0)).rgb), float3(.2126, .7152, .0722));
            flare *= 1 + 4 * LensDirtAmount * dirt;
        }
        rgb += flare * FlareStrength;
    }
    [branch] if (VeilStrength > 0)
    {
        rgb = max(rgb + (VeilLight(uv) - VeilSource(uv)) * VeilStrength, 0);
    }
    [branch] if (DiffractionAmount > 0)
    {
        rgb += tex2Dlod(DiffractionS, float4(uv, 0, 0)).rgb * DiffractionAmount;
    }
    rgb = GradeInput(rgb);
    float peak = max(rgb.r, max(rgb.g, rgb.b));
    if (peak < 1e-10)
    {
        raw = float4(0, 0, 0, 1);
        return;
    }
    float3 e = Cube(ExposureS, rgb / peak) * 14 - 10;
    float cameraStops = CameraExposureStops();
    raw = float4(pow(10.0, e) * peak * exp2(Exposure + cameraStops), 1);
}

float4 BlurLOD(sampler2D s, float2 uv, float2 direction, float sigma, float lod)
{
    float4 result = tex2D(s, uv);
    [branch] if (sigma >= .15)
    {
        float3 sum = 0;
        float weight = 0;
        float2 stepUV = direction * ReShade::PixelSize * max(sigma * .5, .25);
        [unroll] for (int i = -6; i <= 6; i++)
        {
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
        result = float4(sum / max(weight, 1e-6), 1);
    }
    return result;
}
float4 Blur(sampler2D s, float2 uv, float2 direction, float sigma)
{
    return BlurLOD(s, uv, direction, sigma, 0);
}
bool OpticalActive()
{
    return OpticalFilter > 0 && OpticalStrength > 0;
}
float4 OpticalBlur(sampler2D src, float2 uv, float2 direction, float sigma)
{
    if (!OpticalActive())
        return 0;
    if (sigma < .15)
        return tex2Dlod(src, float4(uv, 0, 0));
    float3 sum = 0;
    float norm = 0;
    [unroll] for (int i = -6; i <= 6; i++)
    {
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
    return float4(sum / norm, 1);
}
float4 OptH0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(RawS, uv, float2(1, 0), OpticalSigma[0] * OpticalSpread / PixelUM());
}
float4 OptV0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH0S, uv, float2(0, 1), OpticalSigma[0] * OpticalSpread / PixelUM());
}
float4 OptH1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV0S, uv, float2(1, 0),
                       sqrt(OpticalSigma[1] * OpticalSigma[1] - OpticalSigma[0] * OpticalSigma[0]) *
                           OpticalSpread / PixelUM());
}
float4 OptV1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH1S, uv, float2(0, 1),
                       sqrt(OpticalSigma[1] * OpticalSigma[1] - OpticalSigma[0] * OpticalSigma[0]) *
                           OpticalSpread / PixelUM());
}
float4 OptH2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV1S, uv, float2(1, 0),
                       sqrt(OpticalSigma[2] * OpticalSigma[2] - OpticalSigma[1] * OpticalSigma[1]) *
                           OpticalSpread / PixelUM());
}
float4 OptV2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH2S, uv, float2(0, 1),
                       sqrt(OpticalSigma[2] * OpticalSigma[2] - OpticalSigma[1] * OpticalSigma[1]) *
                           OpticalSpread / PixelUM());
}
float4 OptH3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV2S, uv, float2(1, 0),
                       sqrt(OpticalSigma[3] * OpticalSigma[3] - OpticalSigma[2] * OpticalSigma[2]) *
                           OpticalSpread / PixelUM());
}
float4 OptV3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH3S, uv, float2(0, 1),
                       sqrt(OpticalSigma[3] * OpticalSigma[3] - OpticalSigma[2] * OpticalSigma[2]) *
                           OpticalSpread / PixelUM());
}
float4 OptH4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV3S, uv, float2(1, 0),
                       sqrt(OpticalSigma[4] * OpticalSigma[4] - OpticalSigma[3] * OpticalSigma[3]) *
                           OpticalSpread / PixelUM());
}
float4 OptV4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH4S, uv, float2(0, 1),
                       sqrt(OpticalSigma[4] * OpticalSigma[4] - OpticalSigma[3] * OpticalSigma[3]) *
                           OpticalSpread / PixelUM());
}
float4 OptH5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV4S, uv, float2(1, 0),
                       sqrt(OpticalSigma[5] * OpticalSigma[5] - OpticalSigma[4] * OpticalSigma[4]) *
                           OpticalSpread / PixelUM());
}
float4 OptV5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH5S, uv, float2(0, 1),
                       sqrt(OpticalSigma[5] * OpticalSigma[5] - OpticalSigma[4] * OpticalSigma[4]) *
                           OpticalSpread / PixelUM());
}
float4 OptH6PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV5S, uv, float2(1, 0),
                       sqrt(OpticalSigma[6] * OpticalSigma[6] - OpticalSigma[5] * OpticalSigma[5]) *
                           OpticalSpread / PixelUM());
}
float4 OptV6PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH6S, uv, float2(0, 1),
                       sqrt(OpticalSigma[6] * OpticalSigma[6] - OpticalSigma[5] * OpticalSigma[5]) *
                           OpticalSpread / PixelUM());
}
float4 OptH7PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV6S, uv, float2(1, 0),
                       sqrt(OpticalSigma[7] * OpticalSigma[7] - OpticalSigma[6] * OpticalSigma[6]) *
                           OpticalSpread / PixelUM());
}
float4 OptV7PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH7S, uv, float2(0, 1),
                       sqrt(OpticalSigma[7] * OpticalSigma[7] - OpticalSigma[6] * OpticalSigma[6]) *
                           OpticalSpread / PixelUM());
}
float4 OptH8PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV7S, uv, float2(1, 0),
                       sqrt(OpticalSigma[8] * OpticalSigma[8] - OpticalSigma[7] * OpticalSigma[7]) *
                           OpticalSpread / PixelUM());
}
float4 OptV8PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH8S, uv, float2(0, 1),
                       sqrt(OpticalSigma[8] * OpticalSigma[8] - OpticalSigma[7] * OpticalSigma[7]) *
                           OpticalSpread / PixelUM());
}
float4 OptH9PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV8S, uv, float2(1, 0),
                       sqrt(OpticalSigma[9] * OpticalSigma[9] - OpticalSigma[8] * OpticalSigma[8]) *
                           OpticalSpread / PixelUM());
}
float4 OptV9PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH9S, uv, float2(0, 1),
                       sqrt(OpticalSigma[9] * OpticalSigma[9] - OpticalSigma[8] * OpticalSigma[8]) *
                           OpticalSpread / PixelUM());
}
float OpticalFraction()
{
    float s = clamp(log2(max(OpticalStrength, .125)), -3, 1);
    float a = s < -2 ? lerp(.10, .20, s + 3)
                     : (s < -1 ? lerp(.20, .35, s + 2) : (s < 0 ? lerp(.35, .55, s + 1) : lerp(.55, .75, s)));
    return min(.99, a * OpticalGain[clamp(OpticalFilter - 1, 0, 3)]) * saturate(OpticalStrength / .125);
}
float4 OpticalMergePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float4 raw = tex2Dlod(RawS, float4(uv, 0, 0));
    if (!OpticalActive())
        return raw;
    int family = clamp(OpticalFilter - 1, 0, 3);
    float3 spread = 0;
    spread += tex2Dlod(OptV0S, float4(uv, 0, 0)).rgb * OpticalWeight0[family];
    spread += tex2Dlod(OptV1S, float4(uv, 0, 0)).rgb * OpticalWeight1[family];
    spread += tex2Dlod(OptV2S, float4(uv, 0, 0)).rgb * OpticalWeight2[family];
    spread += tex2Dlod(OptV3S, float4(uv, 0, 0)).rgb * OpticalWeight3[family];
    spread += tex2Dlod(OptV4S, float4(uv, 0, 0)).rgb * OpticalWeight4[family];
    spread += tex2Dlod(OptV5S, float4(uv, 0, 0)).rgb * OpticalWeight5[family];
    spread += tex2Dlod(OptV6S, float4(uv, 0, 0)).rgb * OpticalWeight6[family];
    spread += tex2Dlod(OptV7S, float4(uv, 0, 0)).rgb * OpticalWeight7[family];
    spread += tex2Dlod(OptV8S, float4(uv, 0, 0)).rgb * OpticalWeight8[family];
    spread += tex2Dlod(OptV9S, float4(uv, 0, 0)).rgb * OpticalWeight9[family];
    return float4(lerp(raw.rgb, spread, OpticalFraction()), raw.a);
}

float4 HalH0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(1.0) / PixelUM() : 0, 1);
}
float4 Hal0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH0S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(1.0) / PixelUM() : 0);
}
float4 HalH1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(2.0) / PixelUM() : 0, 1);
}
float4 Hal1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH1S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(2.0) / PixelUM() : 0);
}
float4 HalH2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(3.0) / PixelUM() : 0, 1);
}
float4 Hal2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH2S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(3.0) / PixelUM() : 0);
}
float4 CoupHCorePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(InhibitorS, uv, float2(1, 0), Adjacency ? 20.0 / PixelUM() : 0);
}
float4 CoupCorePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(CoupHCoreS, uv, float2(0, 1), Adjacency ? 20.0 / PixelUM() : 0);
}
float4 CoupHTailPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(InhibitorS, uv, float2(1, 0), Adjacency ? 200.0 / PixelUM() : 0, 1);
}
float4 CoupTailPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(CoupHTailS, uv, float2(0, 1), Adjacency ? 200.0 / PixelUM() : 0);
}

void PreparePS(float4 p : SV_Position, float2 uv : TEXCOORD, out float4 logE : SV_Target0,
               out float4 inhibitor : SV_Target1)
{
    float3 raw = tex2D(OpticalRawS, uv).rgb;
    [branch] if (Halation > 0)
    {
        float3 h = (tex2D(Hal0S, uv).rgb + .5 * tex2D(Hal1S, uv).rgb + .25 * tex2D(Hal2S, uv).rgb) / 1.75;
        float3 hs = float3(.05, .015, 0) * Halation;
        raw = (raw + hs * h) / (1 + hs);
    }
    float3 e = log10(max(raw, 1e-10));
    float3 d = Curve(e, false);
    float3 silver = Positive[Stock] ? DMax[Stock] - d : d;
    inhibitor = float4(dot(silver, MC0[Stock]), dot(silver, MC1[Stock]), dot(silver, MC2[Stock]), 1);
    logE = float4(e, 1);
}
