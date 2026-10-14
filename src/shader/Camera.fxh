float3 Decode(float3 c)
{
    return lerp(c / 12.92, pow(max((c + .055) / 1.055, 0), 2.4), step(.04045, c));
}
float3 Encode(float3 c)
{
    c = max(c, 0);
    return lerp(c * 12.92, 1.055 * pow(c, 1.0 / 2.4) - .055, step(.0031308, c));
}
float3 SceneLinear(float2 uv)
{
    return Decode(tex2Dlod(ReShade::BackBuffer, float4(uv, 0, 0)).rgb);
}
float4 CameraAdaptPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float4 old = tex2Dlod(CameraHistoryS, float4(.5, .5, 0, 0));
    float stamp = float(uint(Tick) & 1048575u);
    if (!AutoExposure)
        return float4(0, stamp, 0, 173.0);
    float2 meter = tex2Dlod(CameraMeterS, float4(.5, .5, 0, 6)).rg;
    float target = clamp(log2(max(AutoTarget, 1e-5)) - meter.x / max(meter.y, 1e-6) + AutoCompensation,
                         AutoMin, AutoMax);
    bool valid =
        old.a == 173.0 && old.r >= AutoMin && old.r <= AutoMax && old.g <= stamp && stamp - old.g <= 1;
    float previous = valid ? old.r : 0;
    float seconds = target > previous ? AutoBrightenTime : AutoDarkenTime;
    float dt = clamp(FrameTime * .001, 0, .25);
    float result = lerp(previous, target, 1 - exp2(-dt / max(seconds, .01)));
    if (abs(target - previous) < .01)
        result = previous;
    if (valid && old.g == stamp)
        result = previous;
    return float4(result, stamp, target, 173.0);
}
float4 CameraHistoryPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return tex2Dlod(CameraStateS, float4(.5, .5, 0, 0));
}
void CameraMeterVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!AutoExposure || Strength <= 0)
        position = float4(2, 2, 0, 1);
}
void CameraStateVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (Strength <= 0)
        position = float4(2, 2, 0, 1);
}
float3 TemperatureRGB(float kelvin)
{
    float t = kelvin / 100.0;
    float r = t <= 66 ? 1 : 1.292936 * pow(max(t - 60, 1), -0.133205);
    float g = t <= 66 ? .390082 * log(t) - .631841 : 1.129891 * pow(max(t - 60, 1), -.075515);
    float b = t >= 66 ? 1 : (t <= 19 ? 0 : .543207 * log(max(t - 10, 1)) - 1.196254);
    return saturate(float3(r, g, b));
}
float3 LiftShadows(float3 rgb)
{
    [branch] if (PreShadows > 0)
    {
        float luminance = dot(max(rgb, 0), float3(.2126, .7152, .0722));
        float x = saturate(luminance / max(PreShadowRange, 1e-5));
        float protection = lerp(1, smoothstep(.015, .075, x), saturate(PreShadowBlack));
        // y=x+k*x*(1-x)^2 has nonnegative slope for k<=3. No tonal reversals.
        float gain = 1 + (exp2(clamp(PreShadows, 0, 2)) - 1) * (1 - x) * (1 - x) * protection;
        rgb *= gain; // Shared RGB gain preserves ratios rather than lifting channels separately.
    }
    return rgb;
}
float3 GradeInput(float3 rgb)
{
    if (!PreGrade)
        return rgb;
    if (PreExposure != 0)
        rgb *= exp2(PreExposure);
    if (PreTemperature != 6500 && PreTempMix > 0)
    {
        float lum = dot(rgb, float3(.2126, .7152, .0722));
        float3 gain = lerp(1, TemperatureRGB(PreTemperature) / TemperatureRGB(6500), PreTempMix);
        rgb *= gain;
        rgb *= lerp(1, lum / max(dot(rgb, float3(.2126, .7152, .0722)), 1e-8), PrePreserve);
    }
    // Tonal controls in display encoding; keep values above one for film exposure.
    if (PreBrightness != 1 || PreGamma != 1 || PreContrast != 1 || PreFlatten != 0 || PreSatLimit < 1)
    {
        float3 c = Encode(rgb);
        c *= PreBrightness;
        if (PreGamma != 1)
            c = pow(max(c, 0), 1 / PreGamma);
        if (PreContrast != 1)
            c = (c - .5) * PreContrast + .5;
        if (PreFlatten > 0)
            c = lerp(c, .5 + (c - .5) * .5, PreFlatten);
        c = max(c, 0);
        if (PreSatLimit < 1)
        {
            float hi = max(c.r, max(c.g, c.b)), lo = min(c.r, min(c.g, c.b)), mid = (hi + lo) * .5;
            float chroma = hi - lo;
            float allowed = max(0, 1 - abs(2 * saturate(mid) - 1)) * PreSatLimit;
            c = lerp(mid.xxx, c, min(1, allowed / max(chroma, 1e-8)));
        }
        rgb = Decode(c);
    }
    if (PreSaturation != 1)
        rgb = lerp(dot(rgb, float3(.2126, .7152, .0722)).xxx, rgb, PreSaturation);
    return LiftShadows(max(rgb, 0));
}

float4 CameraMeterPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    // Four taps per cell reduce aliasing from tiny highlights. No CPU readback.
    float sumLog = 0, sumWeight = 0;
    [unroll] for (int y = 0; y < 2; y++)
    {
        [unroll] for (int x = 0; x < 2; x++)
        {
            float2 q = uv + (float2(x, y) - .5) / 128.0;
            float r2 = dot((q - .5) * 2, (q - .5) * 2);
            float w =
                AutoMetering == 0 ? 1 : (AutoMetering == 1 ? .15 + .85 * exp2(-4 * r2) : exp2(-32 * r2));
            float lum = dot(max(GradeInput(SceneLinear(q)), 0), float3(.2126, .7152, .0722));
            sumLog += log2(clamp(lum, 1e-5, 65504.0)) * w;
            sumWeight += w;
        }
    }
    return float4(sumLog * .25, sumWeight * .25, 0, 0);
}

float CameraExposureStops()
{
    return AutoExposure ? tex2Dlod(CameraStateS, float4(.5, .5, 0, 0)).r : 0;
}

float3 PreGradePreview(float2 uv)
{
    float3 rgb = max(GradeInput(SceneLinear(uv)) * exp2(CameraExposureStops()), 0);
    // Display-only shoulder: preserve shadows/midtones and compress bright peaks.
    // A shared gain preserves RGB ratios. Film input and metering never use this.
    float peak = max(rgb.r, max(rgb.g, rgb.b));
    if (peak > .8)
        rgb *= (.8 + .2 * (peak - .8) / (peak - .6)) / peak;
    return Encode(rgb);
}
