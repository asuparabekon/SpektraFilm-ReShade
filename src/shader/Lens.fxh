int LensIndex()
{
    return clamp(LensModel - 1, 0, 3);
}
bool FlareActive()
{
    return FlareStrength > 0 && (FlareGhosts > 0 || FlareHalo > 0);
}
bool LensActive()
{
    return LensModel > 0 &&
           (LensSoftness > 0 || LensDistortion > 0 || LensVignette > 0 || LensCA > 0);
}
float2 LensSensorSize()
{
    float aspect = BUFFER_WIDTH * 1.0 / BUFFER_HEIGHT;
    return aspect >= 1.5 ? float2(36, 36 / aspect) / LensCropFactors[LensIndex()]
                         : float2(24 * aspect, 24) / LensCropFactors[LensIndex()];
}
// Lensfun reverse poly3, with its focal-length-preserving coefficient normalization.
float LensInverseScale(float radius)
{
    float3 abc = LensDistortionABC[LensIndex()] * LensDistortion;
    float ru = radius;
    [unroll] for (int i = 0; i < 5; i++)
    {
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
    return radius > 1e-6 ? ru / radius : 1;
}
float LensColourScale(float radius, int channel)
{
    if (channel == 1 || LensCA <= 0)
        return 1;
    float3 terms = channel == 0 ? LensTCAR[LensIndex()] : LensTCAB[LensIndex()];
    terms = float3(1, 0, 0) + (terms - float3(1, 0, 0)) * LensCA;
    float ru = radius;
    [unroll] for (int i = 0; i < 4; i++)
    {
        ru -= (ru * (terms.x + terms.y * ru + terms.z * ru * ru) - radius) /
              (terms.x + 2 * terms.y * ru + 3 * terms.z * ru * ru);
    }
    return radius > 1e-6 ? ru / radius : 1;
}
float2 LensSourceUV(float2 p, int channel, float2 sensor, float zoom)
{
    p *= LensColourScale(length(p), channel);
    p *= LensInverseScale(length(p));
    return .5 + p / (sensor * zoom);
}
// Decode individual texels before interpolation, including clamped border samples.
float3 SampleLinearBackBuffer(float2 uv)
{
    float2 size = float2(BUFFER_WIDTH, BUFFER_HEIGHT);
    float2 p = uv * size - .5, cell = floor(p), f = frac(p);
    float2 q = (cell + .5) / size, stepUV = 1 / size;
    float3 a = Decode(tex2Dlod(ReShade::BackBuffer, float4(q, 0, 0)).rgb);
    float3 b = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + float2(stepUV.x, 0), 0, 0)).rgb);
    float3 c = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + float2(0, stepUV.y), 0, 0)).rgb);
    float3 d = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + stepUV, 0, 0)).rgb);
    return lerp(lerp(a, b, f.x), lerp(c, d, f.x), f.y);
}
// Auto-crop depends only on the lens settings and viewport, not the pixel.
float LensCropScale()
{
    float2 sensor = LensSensorSize();
    float zoom = 1;
    if (LensAutoCrop && (LensDistortion > 0 || LensCA > 0))
    {
        float corner = length(sensor * .5);
        [unroll] for (int channel = 0; channel < 3; channel++)
        {
            float colour = LensColourScale(corner, channel);
            zoom = max(zoom, colour * LensInverseScale(corner * colour));
        }
    }
    return zoom;
}
float4 LensCapturePS(float4 pos : SV_Position, float2 uv : TEXCOORD, nointerpolation float zoom : TEXCOORD1)
    : SV_Target
{
    if (!LensActive())
        return 0;
    float2 sensor = LensSensorSize(), p = (uv - .5) * sensor;
    float3 linearRGB;
    [branch] if (LensDistortion <= 0 && LensCA <= 0)
    {
        linearRGB = SceneLinear(uv);
    }
    else if (LensCA <= 0) linearRGB = SampleLinearBackBuffer(LensSourceUV(p, 1, sensor, zoom));
    else
    {
        linearRGB.r = SampleLinearBackBuffer(LensSourceUV(p, 0, sensor, zoom)).r;
        linearRGB.g = SampleLinearBackBuffer(LensSourceUV(p, 1, sensor, zoom)).g;
        linearRGB.b = SampleLinearBackBuffer(LensSourceUV(p, 2, sensor, zoom)).b;
    }
    float r2 = dot(p, p) / (LensRadiiMM[LensIndex()] * LensRadiiMM[LensIndex()]);
    float3 coefficients = LensVignetteCoefficients[LensIndex() * 3 + clamp(LensAperture, 0, 2)];
    float transmission = max(.001, 1 + dot(coefficients, float3(r2, r2 * r2, r2 * r2 * r2)));
    return float4(linearRGB * lerp(1, transmission, LensVignette), 1);
}
// PSF atlas: four lenses, three apertures, three channels, 17 field positions.
// Upper half: offsets; lower half: variances. Each component uses two bytes.
static const int LensFieldCount = 17;
static const int LensRowsPerProfile = 3 * 3 * LensFieldCount;
static const float2 LensAtlasSize = float2(48, 1224);
float3 LensTap(float tap, float field, int channel)
{
    float y = (LensIndex() * LensRowsPerProfile + (clamp(LensAperture, 0, 2) * 3 + channel) * LensFieldCount +
               field * (LensFieldCount - 1) + .5) /
              LensAtlasSize.y;
    float4 data = tex2Dlod(LensPSFS, float4((tap + .5) / LensAtlasSize.x, y, 0, 0));
    float4 variance = tex2Dlod(LensPSFS, float4((tap + .5) / LensAtlasSize.x, y + .5, 0, 0));
    return float3((float2(data.r * 256 + data.g, data.b * 256 + data.a) / 257 - .5) * .5,
                  (variance.r * 256 + variance.g) / 257 * .25);
}
float LensLOD(float sigmaMM, float2 sensor)
{
    float sigma = sigmaMM * LensSoftness * BUFFER_WIDTH / sensor.x;
    float variance = sigma * sigma;
    float level = floor(.5 * log2(1 + 12 * variance));
    float power = exp2(2 * level);
    float fraction = (12 * variance + 1 - power) / (3 * power);
    return clamp(level + fraction, 0, SPEKTRA_LENS_MIPS - 1);
}
float3 LensSample(float2 uv)
{
    float3 result = tex2Dlod(LensInputS, float4(uv, 0, 0)).rgb;
    [branch] if (LensSoftness > 0)
    {
        float2 sensor = LensSensorSize(), p = (uv - .5) * sensor;
        float radius = length(p);
        float2 radial = radius > 1e-6 ? p / radius : float2(1, 0), tangent = float2(-radial.y, radial.x);
        float field = saturate(radius / LensRadiiMM[LensIndex()]);
        int count = LensQuality == 0 ? 16 : 32;
        float start = LensQuality == 0 ? 0 : 16;
        float3 sum = 0;
        [unroll] for (int i = 0; i < 32; ++i)
        {
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
        result = sum / count;
    }
    return result;
}
