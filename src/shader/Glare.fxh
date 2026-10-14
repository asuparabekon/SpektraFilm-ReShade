// Box downsampling and tent reconstruction adapted from KinoBloom (MIT).
// See GLARE-NOTICES.txt. Each scale is normalized; no global haze term is added.
float3 VeilSource(float2 uv)
{
    return LensActive() ? tex2Dlod(OptH0S, float4(uv, 0, 0)).rgb : SceneLinear(uv);
}
float4 VeilCapturePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float3 sum = 0;
    float2 pixel = float2(BUFFER_RCP_WIDTH, BUFFER_RCP_HEIGHT);
    [unroll] for (int y = 0; y < 2; ++y)
    {
        [unroll] for (int x = 0; x < 2; ++x)
        {
            sum += max(VeilSource(uv + (float2(x, y) - .5) * pixel), 0);
        }
    }
    return float4(sum * .25, 1);
}
float3 VeilDownsample(sampler2D source, float2 uv, float2 pixel)
{
    float3 sum = tex2Dlod(source, float4(uv + pixel * float2(-1, -1), 0, 0)).rgb;
    sum += tex2Dlod(source, float4(uv + pixel * float2(1, -1), 0, 0)).rgb;
    sum += tex2Dlod(source, float4(uv + pixel * float2(-1, 1), 0, 0)).rgb;
    sum += tex2Dlod(source, float4(uv + pixel, 0, 0)).rgb;
    return sum * .25;
}
float3 VeilTent(sampler2D source, float2 uv, float2 pixel)
{
    float3 sum = 0;
    [unroll] for (int y = -1; y <= 1; ++y)
    {
        [unroll] for (int x = -1; x <= 1; ++x)
        {
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
    }
    return sum / 16.0;
}
float3 VeilReconstruct(sampler2D fine, sampler2D coarse, float2 uv, float2 coarsePixel)
{
    return lerp(tex2Dlod(fine, float4(uv, 0, 0)).rgb, VeilTent(coarse, uv, coarsePixel),
                lerp(.65, .95, saturate(VeilSpread)));
}
float4 VeilDown1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilDownsample(VeilS, uv, 1.0 / float2(((BUFFER_WIDTH + 2 - 1) / 2), ((BUFFER_HEIGHT + 2 - 1) / 2))),
        1);
}
float4 VeilDown2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(VeilDownsample(VeilDown1S, uv,
                                 1.0 / float2(((BUFFER_WIDTH + 4 - 1) / 4), ((BUFFER_HEIGHT + 4 - 1) / 4))),
                  1);
}
float4 VeilDown3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(VeilDownsample(VeilDown2S, uv,
                                 1.0 / float2(((BUFFER_WIDTH + 8 - 1) / 8), ((BUFFER_HEIGHT + 8 - 1) / 8))),
                  1);
}
float4 VeilDown4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilDownsample(VeilDown3S, uv,
                       1.0 / float2(((BUFFER_WIDTH + 16 - 1) / 16), ((BUFFER_HEIGHT + 16 - 1) / 16))),
        1);
}
float4 VeilDown5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilDownsample(VeilDown4S, uv,
                       1.0 / float2(((BUFFER_WIDTH + 32 - 1) / 32), ((BUFFER_HEIGHT + 32 - 1) / 32))),
        1);
}
float4 VeilDown6PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilDownsample(VeilDown5S, uv,
                       1.0 / float2(((BUFFER_WIDTH + 64 - 1) / 64), ((BUFFER_HEIGHT + 64 - 1) / 64))),
        1);
}
float4 VeilUp5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilReconstruct(VeilDown5S, VeilDown6S, uv,
                        1.0 / float2(((BUFFER_WIDTH + 128 - 1) / 128), ((BUFFER_HEIGHT + 128 - 1) / 128))),
        1);
}
float4 VeilUp4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilReconstruct(VeilDown4S, VeilUp5S, uv,
                        1.0 / float2(((BUFFER_WIDTH + 64 - 1) / 64), ((BUFFER_HEIGHT + 64 - 1) / 64))),
        1);
}
float4 VeilUp3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilReconstruct(VeilDown3S, VeilUp4S, uv,
                        1.0 / float2(((BUFFER_WIDTH + 32 - 1) / 32), ((BUFFER_HEIGHT + 32 - 1) / 32))),
        1);
}
float4 VeilUp2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(
        VeilReconstruct(VeilDown2S, VeilUp3S, uv,
                        1.0 / float2(((BUFFER_WIDTH + 16 - 1) / 16), ((BUFFER_HEIGHT + 16 - 1) / 16))),
        1);
}
float4 VeilUp1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(VeilReconstruct(VeilDown1S, VeilUp2S, uv,
                                  1.0 / float2(((BUFFER_WIDTH + 8 - 1) / 8), ((BUFFER_HEIGHT + 8 - 1) / 8))),
                  1);
}
float4 VeilUp0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return float4(VeilReconstruct(VeilS, VeilUp1S, uv,
                                  1.0 / float2(((BUFFER_WIDTH + 4 - 1) / 4), ((BUFFER_HEIGHT + 4 - 1) / 4))),
                  1);
}
float3 VeilLight(float2 uv)
{
    return VeilTent(VeilUp0S, uv, 1.0 / float2((BUFFER_WIDTH + 1) / 2, (BUFFER_HEIGHT + 1) / 2));
}
void VeilVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && VeilStrength > 0))
        position = float4(2, 2, 0, 1);
}

// Wave-optics tail filters and paraxial ghost paths are baked offline.
int LensEffectsIndex()
{
    return LensEffectsProfile > 0 ? clamp(LensEffectsProfile - 1, 0, 3) : LensIndex();
}
int EffectsAperture()
{
    return clamp(LinkLensAperture ? LensAperture : LensEffectsAperture, 0, 2);
}
float2 EffectsSensor()
{
    float aspect = BUFFER_WIDTH / (float)BUFFER_HEIGHT;
    float2 sensor = aspect >= 1.5 ? float2(36, 36 / aspect) : float2(24 * aspect, 24);
    return sensor / LensCropFactors[LensEffectsIndex()];
}
int EffectsBlades()
{
    return DiffractionBlades > 0 ? clamp(DiffractionBlades + 4, 5, 9) : LensBladeCounts[LensEffectsIndex()];
}
float3 HighlightSource(float2 uv)
{
    float3 c = max(VeilSource(uv), 0);
    float luminance = dot(c, float3(.2126, .7152, .0722));
    return c * (max(luminance - FlareThreshold, 0) / max(luminance, 1e-5));
}
float4 LensHighlightPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float3 sum = 0;
    [unroll] for (int y = 0; y < 4; ++y)
    {
        [unroll] for (int x = 0; x < 4; ++x)
        {
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
    }
    return float4(sum / 16, 1);
}
float3 ReadHighlight(float2 uv, float lod)
{
    // A light leaving the image must not smear along the clamped screen border.
    float2 inside = step(0, uv) * step(uv, 1);
    return tex2Dlod(LensHighlightS, float4(saturate(uv), 0, lod)).rgb * inside.x * inside.y;
}
float HighlightLOD(float sigmaPixels)
{
    return clamp(log2(max(sigmaPixels, 1)), 0, LENS_HIGHLIGHT_MIPS - 1);
}
bool HighlightRegionEmpty(float2 uv, float2 radius)
{
    float2 size = float2((BUFFER_WIDTH + 3) / 4, (BUFFER_HEIGHT + 3) / 4);
    float lod = clamp(ceil(log2(max(max(radius.x * size.x, radius.y * size.y) * 2 + 2, 1))), 0,
                      LENS_HIGHLIGHT_MIPS - 1);
    float3 sum = tex2Dlod(LensHighlightS, float4(uv - radius, 0, lod)).rgb;
    sum += tex2Dlod(LensHighlightS, float4(uv + radius, 0, lod)).rgb;
    sum += tex2Dlod(LensHighlightS, float4(uv + radius * float2(-1, 1), 0, lod)).rgb;
    sum += tex2Dlod(LensHighlightS, float4(uv + radius * float2(1, -1), 0, lod)).rgb;
    return max(sum.r, max(sum.g, sum.b)) == 0;
}
float2 DiffractionTap(int tap, int row)
{
    float2 uv = float2((tap + .5) / 24, (row + .5) / 30);
    float2 hi = tex2Dlod(DiffractionKernelS, float4(uv, 0, 0)).rg;
    float2 lo = tex2Dlod(DiffractionKernelS, float4(uv + float2(0, .5), 0, 0)).rg;
    return (hi * 256 + lo) / 257;
}
float4 DiffractionPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    int aperture = EffectsAperture(), blades = EffectsBlades();
    int row = (blades - 5) * 3 + aperture;
    int count = LensQuality == 0 ? 8 : 16;
    int start = LensQuality == 0 ? 0 : 8;
    int axes = (blades & 1) == 0 ? (blades >> 1) : blades;
    float fnumber = LensFNumbers[LensEffectsIndex()][aperture];
    float2 sensor = EffectsSensor();
    float3 radius = float3(.0006563, .0005876, .0004861) * fnumber * DiffractionScale * 30;
    float3 sigma = radius * BUFFER_WIDTH / (sensor.x * 4 * count);
    float3 lod = float3(HighlightLOD(sigma.r), HighlightLOD(sigma.g), HighlightLOD(sigma.b));
    float2 support = radius.r / sensor + 3 * exp2(lod.r) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
    [branch] if (HighlightRegionEmpty(uv, support))
    {
        return float4(0, 0, 0, 1);
    }
    float3 sum = 0;
    [unroll] for (int axis = 0; axis < 14; ++axis)
    {
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            [unroll] for (int i = 0; i < 16; ++i)
            {
                if (i < count)
                {
                    float2 tap = DiffractionTap(start + i, row);
                    float2 offset = direction * tap.x;
                    sum.r += (ReadHighlight(uv + offset * radius.r, lod.r).r +
                              ReadHighlight(uv - offset * radius.r, lod.r).r) *
                             tap.y;
                    sum.g += (ReadHighlight(uv + offset * radius.g, lod.g).g +
                              ReadHighlight(uv - offset * radius.g, lod.g).g) *
                             tap.y;
                    sum.b += (ReadHighlight(uv + offset * radius.b, lod.b).b +
                              ReadHighlight(uv - offset * radius.b, lod.b).b) *
                             tap.y;
                }
            }
        }
    }
    float3 spokes = sum / (2 * axes);
    // Rounded, open blades produce a softer, more circular diffraction tail.
    float roundness = aperture == 0 ? .85 : (aperture == 1 ? .35 : .10);
    float3 soft = ReadHighlight(uv, HighlightLOD(radius.g * BUFFER_WIDTH / (sensor.x * 8)));
    return float4(lerp(spokes, soft, roundness), 1);
}
float3 ProfileGhosts(float2 uv)
{
    float3 sum = 0;
    int profile = LensEffectsIndex(), aperture = EffectsAperture();
    float2 sensor = EffectsSensor();
    int blades = EffectsBlades();
    float roundness = aperture == 0 ? .85 : (aperture == 1 ? .35 : .10);
    [unroll] for (int ghost = 0; ghost < 6; ++ghost)
    {
        int index = profile * 6 + ghost;
        float4 geometry = GhostGeometry[index * 3 + aperture];
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            [unroll] for (int i = 0; i < 16; ++i)
            {
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LensEffectFocal[profile]));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = GhostTint[index];
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(GhostGeometry[index * 3].z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
    return sum * FlareGhosts;
}
void LensHighlightVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && (DiffractionAmount > 0 || (ProfileFlare && FlareActive()))))
        position = float4(2, 2, 0, 1);
}
void DiffractionVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && DiffractionAmount > 0))
        position = float4(2, 2, 0, 1);
}

// Independently implemented from John Chapman's screen-space flare method (2017).
// Threshold before averaging preserves small highlights. No wrapped edge samples.
float4 FlareExtractPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    if (!FlareActive())
        return 0;
    float3 sum = 0;
    [unroll] for (int y = 0; y < 4; y++)
    {
        [unroll] for (int x = 0; x < 4; x++)
        {
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
    }
    return float4(sum / 16, 1);
}
float3 FlareRead(float2 uv)
{
    float fade = smoothstep(0, .04, min(min(uv.x, uv.y), min(1 - uv.x, 1 - uv.y)));
    float weight = 1 - smoothstep(0, .75, length(uv - .5));
    return tex2Dlod(FlareAS, float4(uv, 0, 0)).rgb * fade * weight;
}
float4 FlareFeaturesPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    if (!FlareActive())
        return 0;
    float2 flipped = 1 - uv, vec = (.5 - flipped) * .38;
    float3 flare = ProfileFlare ? ProfileGhosts(uv) : 0;
    [branch] if (FlareGhosts > 0 && !ProfileFlare)
    {
        [unroll] for (int i = 0; i < 5; i++)
        {
            float2 q = flipped + vec * i;
            float2 axis = q - .5;
            axis /= max(length(axis), 1e-5);
            float2 fringe = axis * float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 1) * .002;
            float3 c = float3(FlareRead(q + fringe).r, FlareRead(q).g, FlareRead(q - fringe).b);
            float3 tint = lerp(float3(.65, .85, 1), float3(1, .75, .5), i / 4.0);
            flare += c * tint * (FlareGhosts / 5);
        }
    }
    [branch] if (FlareHalo > 0)
    {
        float2 aspect = float2(BUFFER_WIDTH / (float)BUFFER_HEIGHT, 1);
        float2 v = (.5 - flipped) * aspect;
        float d = length(v);
        float2 offset = v / max(d, 1e-5) * .28 / aspect;
        float ring = (1 - smoothstep(.55, 1.0, d)) * smoothstep(0, .02, d);
        flare += FlareRead(flipped + offset) * ring * FlareHalo;
    }
    return float4(flare, 1);
}
float4 FlareBlur(sampler2D src, float2 uv, float2 axis)
{
    if (!FlareActive())
        return 0;
    float3 sum = 0;
    float norm = 0;
    [unroll] for (int i = -4; i <= 4; i++)
    {
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
    return float4(sum / norm, 1);
}
float4 FlareHPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return ProfileFlare ? tex2Dlod(FlareBS, float4(uv, 0, 0))
                        : FlareBlur(FlareBS, uv, float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 0));
}
float4 FlareVPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return ProfileFlare ? tex2Dlod(FlareCS, float4(uv, 0, 0)) : FlareBlur(FlareCS, uv, float2(0, 1));
}
float4 LensBlurPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    [branch] if (!LensActive())
    {
        return 0;
    }
    return float4(LensSample(uv), 1);
}
