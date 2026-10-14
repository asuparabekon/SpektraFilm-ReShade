# Shader source

Edit `SpektraFilm.template.fx`, `Spektra-Passes.fxh` and the modules in `shader/`, then run `python tools/generate.py` from the repository root. Preserve uniform names to keep existing standalone presets usable.

| Module | Responsibility |
| --- | --- |
| Controls | ReShade menus and frame timing |
| Resources | Textures, samplers and atlas dimensions |
| Camera | SDR decoding, pre-grading and exposure adaptation |
| Lens | Geometric remapping and optical sampling |
| Glare | Veiling glare, diffraction and flares |
| Film | Exposure, optical diffusion, halation and development preparation |
| Finish | Density-domain grain, print response and scanned damage |

`Spektra-Passes.fxh` controls execution order. `OptH0T` is reused: lens blur writes it first, then optical diffusion overwrites it after exposure has consumed the lens result. Camera history must advance only once per frame. Preserve source alpha at final output. Disabling an effect suppresses its rasterization, but pass and mip-generation overhead can remain.

Film and print tables use paired high/low 8-bit planes to encode 16-bit values; they are not separate stock rows. Keep atlas layouts and sampler coordinates in sync. `data/` holds generated stock, lens and optical constants with their original attribution. Textures and these data headers are inputs to shader assembly.

Generation expands fixed loops to avoid failures in the tested Proton HLSL compiler. Literal loop bounds and scoped indices preserve the maintained code's order. Variable quality levels use bounded loops with per-iteration guards. Constant tables become lookup functions to avoid per-pixel temporary-array copies in Wine. Each lookup uses one conditional expression and one return; multiple early returns stalled Performance Mode compilation. These transformations are shared by Windows and Proton.

The resulting effect has one standalone technique. It decodes the final SDR game image, applies the simulation and returns SDR sRGB. It does not intercept game draws or replace game tone mapping.
