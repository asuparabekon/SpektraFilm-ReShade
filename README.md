# SpektraFilm-ReShade

Standalone SDR film and lens simulation for ReShade, adapted from **[spektrafilm by Andrea Volpato](https://github.com/andreavolpato/spektrafilm)**. Film modeling and profile data come from that project; density-domain grain is adapted from **[vkdt by Johannes Hanika (hanatos) and contributors](https://github.com/hanatos/vkdt/tree/master/src/pipe/modules/filmsim)**.

This is an unofficial real-time adaptation, not the original spectral renderer. It uses baked exposure, development and print tables with GPU approximations for spatial effects.

## Installation

1. Install [ReShade](https://reshade.me/) for your game with its standard effect support files, including `ReShade.fxh`.
2. Download the installable ZIP from [Releases](https://github.com/asuparabekon/SpektraFilm-ReShade/releases) when available, or use **Code → Download ZIP** for the source snapshot, and extract it.
3. Copy the contents of `Shaders` and `Textures` into the corresponding folders under your game's `reshade-shaders` directory.
4. Reload ReShade and enable **SpektraFilm - film and print**.

No addon, Dalamud plugin or REST installation is required. Use the effect after upscaling when the game's injection point permits it. The input and output are **SDR sRGB**; this is not an HDR/scRGB shader. Existing game tone mapping and grading remain part of the input. UI will also be processed if it is present at the injection point.

Disable ReShade Performance Mode while editing controls; enable it again when finished. Shader compilation has been checked with ReShade 6.8, Microsoft's compiler and GE-Proton10-15's built-in compiler. That does not guarantee compatibility with every game, graphics API or HDR setup.

## Features

- 20 film profiles and 8 print-paper profiles, with film exposure and adjustable paper contrast.
- Pre-grading exposure, white balance, brightness, gamma, contrast, saturation and selective shadow lift; a pre-grade preview.
- Optional automatic exposure with selectable metering, adaptation speeds and exposure-linked grain strength.
- Density-domain grain, halation, development diffusion and optical diffusion.
- Four lens profiles with optical softness, distortion, lateral chromatic aberration, vignetting and automatic edge cropping.
- Aperture diffraction, screen-space flare, lens-specific ghost paths, veiling glare and illuminated lens dirt.
- Scanned dust, hairs and scratches, with independent population and animation controls.

Aperture selects lens characteristics; it does not generate depth of field or change exposure. Film width affects grain. Reversal stocks bypass print-paper processing. Lens dirt is illuminated by flare, while film damage is applied to the final image.

Paper contrast **1.0** retains the original print profile; **0.8** uses a softer upstream paper curve. Intermediate values blend the print results. Below 0.8, density is compressed toward each film's neutral reference; this is an artistic adjustment, with zero producing a flat print. It does not affect reversal stocks.

Start with the film and paper selections, then adjust pre-grading and film exposure for your game's image. Add optical effects gradually: the game may already contain bloom, lens effects or sharpening. Screen-space flares use visible highlights and cannot distinguish a bright surface from a light emitter or detect off-screen lights. Pre-grading cannot recover clipped detail or reconstruct camera RAW data.

## Film damage: dust, hairs and scratches

Film damage is included and **disabled by default**. In ReShade, open the **Film damage** category and raise **Film damage amount** from 0; try **0.3** as a starting point.

- **Film damage amount** controls opacity. **Dust density**, **Hair density** and **Scratch density** control how many defects appear.
- Size, light-mark proportion and seed controls adjust their appearance. Disable **Animate film damage** for a fixed pattern.
- Animation uses a transport rate independent of game FPS. Hairs and scratches persist longer than dust.

The effect samples real scanned defects from **[FilmDamageSimulator by Daniela Ivanova and contributors](https://github.com/daniela997/FilmDamageSimulator)**. The included `Textures/Spektra-FilmDamage.png` atlas contains 64 dust examples, 64 hair examples and 39 distinct scratches. Defects are composited in the finishing pass, separately from flare-illuminated lens dirt.

Install the texture alongside the shader. See the [film-damage provenance and extraction notes](licenses/FILM-DAMAGE-NOTICES.txt) and [MIT license](licenses/LICENSE-FILMDAMAGE-MIT.txt).

## Source and generation

`Shaders` and `Textures` are ready to install. Editable shader modules are in `src/shader`; `src/SpektraFilm.template.fx` assembles them, and `src/data` contains the baked profile constants. To regenerate the installed shader with Python 3.10 or newer:

```sh
python tools/generate.py
```

No third-party Python packages are needed for shader assembly. Edit the maintained modules, not the generated `Shaders/SpektraFilm.fx`. See [source notes](src/README.md) for pass ordering and compiler compatibility details. Textures are checked-in assets; the assembly command does not rebake them.

## Releases

Pushing a version tag automatically builds and publishes an installable ZIP and a SHA-256 checksum:

```sh
git tag v1.0.0
git push origin v1.0.0
```

Use a new version for each release. Tags such as `v1.1.0-rc.1` publish as prereleases. Existing releases are not overwritten.

The ZIP contains only shaders, their referenced textures, installation instructions, credits, the changelog and licenses. Editable sources and build tools stay in the repository; the ZIP links to the exact source commit.

For a build without publishing, open **Actions → Release → Run workflow** and leave **tag** empty. Download the ZIP/checksum from the completed run's artifact. Supplying an existing version tag publishes that tag instead. The workflow checks that generated shaders match the maintained source before packaging; it does not perform in-game rendering tests.

To package locally with Python 3.10 or newer:

```sh
python tools/generate.py
python tools/package.py --version v1.0.0 --source-ref <commit-or-tag>
```

The files are written to `dist/`. Python's standard library is sufficient.

## Credits and licensing

Code is distributed under **GNU GPL v3.0**; see [LICENSE](LICENSE). Film profiles, LUTs and their direct derivatives retain **CC BY-SA 4.0** and the unmodified [spektrafilm license notice](licenses/SPEKTRAFILM_LICENSE.txt). Lens calibrations, lens designs, masks and adapted filtering retain their respective notices and licenses.

**[Full credits and component licenses](CREDITS.md)** cover spektrafilm, vkdt, DeepLens, Lensfun, KinoBloom, Unity PostProcessing, FilmDamageSimulator, and the published methods used for glare, diffraction and flares. Upstream authors are not affiliated with or endorsing this port.
