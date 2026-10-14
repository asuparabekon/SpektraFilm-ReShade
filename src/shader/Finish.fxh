uint3 Pcg(uint3 v)
{
    v = v * 1664525u + 1013904223u;
    v.x += v.y * v.z;
    v.y += v.z * v.x;
    v.z += v.x * v.y;
    v ^= v >> 16;
    v.x += v.y * v.z;
    v.y += v.z * v.x;
    v.z += v.x * v.y;
    return v;
}
float AutoISOGrainGain()
{
    float gain = 1.0;
    [branch] if (AutoExposure && AutoISOGrain)
    {
        float cameraStops = tex2Dlod(CameraStateS, float4(.5, .5, 0, 0)).r;
        float isoStops = clamp(cameraStops, 0.0, clamp(AutoISOMax, 0.0, 6.0));
        // Artistic variance scaling; no additional exposure or stock-curve adjustment.
        gain = lerp(1.0, exp2(0.5 * isoStops), saturate(AutoISOResponse));
    }
    return gain;
}
float3 FilmGrain(float2 pixel, float3 density, float tonalGain)
{
    float3 dm = max(DMax[Stock], .1), range = dm + .03;
    float3 a0 = Amp0[Stock], a1 = Amp1[Stock], a2 = Amp2[Stock];
    float3 sum = max(a0 + a1 + a2, 1e-5);
    float3 f0 = a0 / sum, f1 = a1 / sum, f2 = a2 / sum;
    float3 np = saturate((density + .03) / range);
    float3 p0 = saturate(np / max(f0, .001)), p1 = saturate((np - f0) / max(f1, .001)),
           p2 = saturate((np - f0 - f1) / max(f2, .001));
    float3 uniformity = float3(.97, .99, .97);
    float area = PixelUM() * PixelUM();
    float3 particle = float3(.32, .32, .64);
    float3 variance = 3 * range * range *
                      (min(particle * 2 / area, 1) * f0 * p0 * (1 - p0 * uniformity) +
                       min(particle / area, 1) * f1 * p1 * (1 - p1 * uniformity) +
                       min(particle * .5 / area, 1) * f2 * p2 * (1 - p2 * uniformity));
    uint seed = Animate ? (uint)Tick : 0u;
    float2 pos = pixel / GrainSize + float2(Pcg(uint3(seed, 1337, 713)).xy) * (64.0 / 4294967296.0);
    int2 ip = int2(floor(pos));
    float2 f = frac(pos);
    float3 acc = 0;
    float wsq = 0;
    float kernel = .72134752 / max(4 / area + .89 * .89, .16);
    [unroll] for (int y = -1; y <= 2; y++)
    {
        [unroll] for (int x = -1; x <= 2; x++)
        {
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            [unroll] for (int k = 0; k < 2; k++)
            {
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
    }
    [branch] if (AutoExposure && AutoISOGrain)
    {
        tonalGain *= AutoISOGrainGain();
    }
    return max(density + acc * rsqrt(max(wsq, 1e-6)) * sqrt(max(variance, 0)) * Grain * tonalGain, -.03);
}
float4 DevelopPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float3 correction = Adjacency
                            ? lerp(tex2D(CoupCoreS, uv).rgb, tex2D(CoupTailS, uv).rgb, .06)
                            : tex2D(InhibitorS, uv).rgb;
    float3 d = Curve(tex2D(LogES, uv).rgb - correction, true);
    return float4(d, 1);
}
float3 StockPrint(float3 code)
{
    float3 c;
    if (Paper == 0)
        c = Cube(Print0S, code);
    else if (Paper == 1)
        c = Cube(Print1S, code);
    else if (Paper == 2)
        c = Cube(Print2S, code);
    else if (Paper == 3)
        c = Cube(Print3S, code);
    else if (Paper == 4)
        c = Cube(Print4S, code);
    else if (Paper == 5)
        c = Cube(Print5S, code);
    else if (Paper == 6)
        c = Cube(Print6S, code);
    else
        c = Cube(Print7S, code);
    return c;
}
float3 SoftPrint(float3 code)
{
    float3 c;
    if (Paper == 0)
        c = Cube(PrintSoft0S, code);
    else if (Paper == 1)
        c = Cube(PrintSoft1S, code);
    else if (Paper == 2)
        c = Cube(PrintSoft2S, code);
    else if (Paper == 3)
        c = Cube(PrintSoft3S, code);
    else if (Paper == 4)
        c = Cube(PrintSoft4S, code);
    else if (Paper == 5)
        c = Cube(PrintSoft5S, code);
    else if (Paper == 6)
        c = Cube(PrintSoft6S, code);
    else
        c = Cube(PrintSoft7S, code);
    return c;
}
float3 PrintDensity(float3 density)
{
    float3 code = (density + .05) / (DMax[Stock] + .1);
    // Endpoint branches retain one lookup at the original and softer settings.
    float3 result = 0;
    [branch] if (Positive[Stock] || PaperContrast >= 1.0)
    {
        result = StockPrint(code);
    }
    else if (PaperContrast < .8)
    {
        // Below the baked endpoint, compress print-input density around neutral grey.
        // Zero is a flat print; 0.8 retains the existing upstream-baked response.
        float3 compressed = lerp(PrintPivot[Stock], density, saturate(PaperContrast / .8));
        result = SoftPrint((compressed + .05) / (DMax[Stock] + .1));
    }
    else if (PaperContrast == .8) result = SoftPrint(code);
    else result = lerp(SoftPrint(code), StockPrint(code), saturate((PaperContrast - .8) * 5));
    return result;
}
float GrainTonalGain(float3 printColor)
{
    float luminance = dot(Encode(printColor), float3(.2126, .7152, .0722));
    return smoothstep(.025, .10, luminance) * lerp(1.75, .15, smoothstep(.12, .70, luminance));
}
// Atlas cells contain photographed defects, not procedural circles or line noise.
float2 DamageLayer(float2 uv, uint filmFrame, int kind, float density)
{
    float2 coverage = 0;
    float aspect = BUFFER_WIDTH / (float)BUFFER_HEIGHT;
    float scale = clamp(DamageScale, .5, 2.0);
    float2 grid = kind == 0 ? float2(12 * aspect, 12) / scale
                            : (kind == 1 ? float2(2 * aspect, 2) / scale : float2(5, 1));
    float2 cell = floor(uv * grid);
    uint phase = kind == 0 ? filmFrame : (kind == 1 ? filmFrame / 12u : filmFrame / 48u);
    uint3 hash = Pcg(uint3(uint2(cell), phase ^ (uint(DamageSeed) * 173u) ^ (uint(kind) * 7919u)));
    float4 random = float4(hash.x & 65535u, hash.x >> 16, hash.y & 65535u, hash.y >> 16) / 65536.0;
    [branch] if (random.x < saturate(density) * .45)
    {
        float size = kind == 0 ? lerp(.035, .12, random.y) : lerp(.25, .8, random.y);
        float2 extent = kind == 2 ? float2(.22 * scale, 1.8 * scale) : size.xx;
        float2 center =
            kind == 2 ? float2(.2 + .6 * random.z, .5) : lerp(extent * .71, 1 - extent * .71, random.zw);
        float2 q = (frac(uv * grid) - center) / extent;
        if (kind != 2)
        {
            float angle = random.w * 6.2831853;
            float co = cos(angle), si = sin(angle);
            q = float2(co * q.x - si * q.y, si * q.x + co * q.y);
        }
        else if (DamageAnimate)
            q.x += .025 * sin(float(filmFrame) * .035 + random.w * 6.2831853);
        q += .5;
        [branch] if (all(q >= 0) && all(q <= 1))
        {
            uint tile = hash.z & 63u;
            float2 tileOrigin = float2(tile & 7u, tile >> 3u) * 256;
            float2 sampleUV = (tileOrigin + .5 + q * 255) / 2048.0;
            float3 scan = tex2Dlod(FilmDamageS, float4(sampleUV, 0, 0)).rgb;
            float alpha = kind == 0 ? scan.r : (kind == 1 ? scan.g : scan.b);
            float light = float((hash.z >> 8u) & 65535u) / 65536.0 < DamageLightShare ? 1.0 : 0.0;
            coverage = alpha * float2(1 - light, light);
        }
    }
    return coverage;
}
float4 ApplyFilmDamage(float4 color, float2 uv)
{
    [branch] if (DamageAmount > 0 && Strength > 0)
    {
        uint frame = DamageAnimate ? uint(max(DamageTime, 0) * .001 * clamp(DamageFPS, 8, 48)) : 0u;
        float2 coverage = 0;
        [branch] if (DamageDust > 0)
        {
            coverage += DamageLayer(uv, frame, 0, DamageDust);
        }
        [branch] if (DamageHair > 0)
        {
            coverage += DamageLayer(uv, frame, 1, DamageHair);
        }
        [branch] if (DamageScratch > 0)
        {
            coverage += DamageLayer(uv, frame, 2, DamageScratch);
        }
        // Finite optical density preserves scanned gradients even at maximum amount.
        float2 transmission = exp2(-3.0 * coverage * saturate(DamageAmount) * saturate(Strength));
        color.rgb *= transmission.x;
        color.rgb += (1 - color.rgb) * (1 - transmission.y);
    }
    return color;
}
float4 ScanPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float4 source = tex2D(ReShade::BackBuffer, uv);
    [branch] if (PreviewingPreGrade())
    {
        if (Strength <= 0)
            return source;
        return float4(PreGradePreview(uv), source.a);
    }
    [branch] if (Strength <= 0)
    {
        return source;
    }
    float3 density = DevelopPS(p, uv).rgb;
    float3 c = PrintDensity(density);
    [branch] if (Grain > 0)
    {
        // Weight in the final print's tonal range, but retain density-domain grain.
        // Dark-detail emphasis, declining highlights, and a smooth fade into black.
        float tonalGain = GrainTonalGain(c);
        c = PrintDensity(FilmGrain(p.xy, density, tonalGain));
    }
    float4 finished = float4(Encode(lerp(Decode(source.rgb), c, Strength)), source.a);
    finished = ApplyFilmDamage(finished, uv);
    return finished;
}
