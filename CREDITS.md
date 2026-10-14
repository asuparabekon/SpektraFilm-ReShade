# Credits and licenses

SpektraFilm-ReShade is an unofficial ReShade adaptation. The original film model and film/profile data are the work of **Andrea Volpato and the spektrafilm contributors**, not original work of this port. Please visit and support the [original spektrafilm repository](https://github.com/andreavolpato/spektrafilm).

## Film and grain

| Source | Contribution | Terms |
| --- | --- | --- |
| [spektrafilm — Andrea Volpato and contributors](https://github.com/andreavolpato/spektrafilm) | Film/print model, characteristic curves, stock parameters and baked exposure/print data. Reference checkout: `3bb2c2d2801ff68b92019cf1dbcbb133d60832bc`. | Code: GPL v3. Film/profile data and direct LUT derivatives: CC BY-SA 4.0; retain [the complete upstream notice](licenses/SPEKTRAFILM_LICENSE.txt). |
| [vkdt filmsim — Johannes Hanika (hanatos) and contributors](https://github.com/hanatos/vkdt/tree/master/src/pipe/modules/filmsim) | Density-domain grain model adapted to ReShade and evaluated through the film/print response. | [GPL v3](LICENSE). |

Changes made for this port include SDR input/output handling, packed 33³ exposure/print tables, GPU approximations for spatial processing, softened-paper variants, pre-grading and camera controls, ReShade pass scheduling and cross-compiler source generation. The port does not reproduce the complete spectral reference renderer. Changes to profile encodings are recorded in [CHANGELOG.txt](CHANGELOG.txt); upstream profile notices are preserved unmodified.

## Lens models, filtering and scanned assets

| Source | Use in this port | Attribution and license |
| --- | --- | --- |
| [DeepLens — KAUST Computational Imaging Group, Xinge Yang and contributors](https://github.com/vccimaging/DeepLens) | Optical prescriptions used to bake geometric lens softness and approximate reflection paths. | Apache-2.0. [Lens notices](licenses/LENS-NOTICES.txt), [license](licenses/LICENSE-DEEPLENS-APACHE-2.0.txt). |
| [Lensfun contributors](https://github.com/lensfun/lensfun) | Distortion, chromatic aberration and vignetting calibration data and model conventions. | Data: CC BY-SA 3.0; library/model reference: LGPL v3. [Lens notices](licenses/LENS-NOTICES.txt), [data license](licenses/LICENSE-LENSFUN-DATA-CC-BY-SA-3.0.txt), [library license](licenses/LICENSE-LENSFUN-LGPL-3.0.txt). |
| [KinoBloom — Keijiro Takahashi](https://github.com/keijiro/KinoBloom) | Box downsampling and tent reconstruction adapted for threshold-free veiling glare. | MIT. Copyright and full permission text in [glare notices](licenses/GLARE-NOTICES.txt). |
| [Unity PostProcessing — Unity Technologies](https://github.com/Unity-Technologies/PostProcessing) | `LensDirt03.png`, renamed `Spektra-LensDirt.png`, retained byte-for-byte. | MIT. [Asset provenance](licenses/LENSDIRT-NOTICES.txt), [license](licenses/LICENSE-UNITY-LENSDIRT-MIT.txt). |
| [FilmDamageSimulator — Daniela Ivanova and contributors](https://github.com/daniela997/FilmDamageSimulator) | Annotated scanned film defects extracted and packed into the dust/hair/scratch atlas. | MIT. [Extraction notes](licenses/FILM-DAMAGE-NOTICES.txt), [license](licenses/LICENSE-FILMDAMAGE-MIT.txt). |

Pinned revisions, processing changes and asset hashes are retained in the linked notices and `provenance/`. Lens descriptions identify approximations and assumed parameters; they are not measurements of individual retail lenses.

## Published methods and implementation references

- **John Chapman:** [Screen Space Lens Flare](https://john-chapman.github.io/2017/11/05/pseudo-lens-flare.html), the method used for the basic screen-space ghosts and halo.
- **Froyok:** [UE4 Custom Bloom](https://www.froyok.fr/blog/2021-12-ue4-custom-bloom/), a reference for normalized multi-scale glare blending.
- **bean-mhm / RealBloom:** [RealBloom](https://github.com/bean-mhm/realbloom), a reference for Fourier aperture diffraction and image convolution.
- **Beat Reichenbach / Realflare:** [Realflare](https://github.com/beatreichenbach/realflare), a reference for reflection-path, pupil-clipping and coating concepts.

These are credited as method references. RealBloom and Realflare source code is not bundled or copied into this shader; the approximations and their limits are described in [lens-effects notices](licenses/LENS-EFFECTS-NOTICES.txt).

[ReShade — crosire and contributors](https://github.com/crosire/reshade) provides the effect runtime. Its standard `ReShade.fxh` support header is an installation dependency and is not redistributed here.

Stock and lens names identify the underlying profiles. Their manufacturers do not endorse this project.
