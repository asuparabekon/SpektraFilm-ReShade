// SpektraFilm: standalone SDR ReShade adaptation.
// Colour model: Andrea Volpato / spektrafilm (GPL-3.0).
// Density-domain grain adapted from vkdt / hanatos (GPL-3.0).
// Profiles/LUTs: CC BY-SA 4.0. See accompanying notices and README.
#include "ReShade.fxh"
#include "Spektra-Profiles.fxh"
#include "Spektra-Optical.fxh"
#include "Spektra-Lens.fxh"
#include "Spektra-LensEffects.fxh"
#if BUFFER_WIDTH < 1
#define OPT_WIDTH_0 1
#else
#define OPT_WIDTH_0 (BUFFER_WIDTH/1)
#endif
#if BUFFER_HEIGHT < 1
#define OPT_HEIGHT_0 1
#else
#define OPT_HEIGHT_0 (BUFFER_HEIGHT/1)
#endif
#if BUFFER_WIDTH < 2
#define OPT_WIDTH_1 1
#else
#define OPT_WIDTH_1 (BUFFER_WIDTH/2)
#endif
#if BUFFER_HEIGHT < 2
#define OPT_HEIGHT_1 1
#else
#define OPT_HEIGHT_1 (BUFFER_HEIGHT/2)
#endif
#if BUFFER_WIDTH < 4
#define OPT_WIDTH_2 1
#else
#define OPT_WIDTH_2 (BUFFER_WIDTH/4)
#endif
#if BUFFER_HEIGHT < 4
#define OPT_HEIGHT_2 1
#else
#define OPT_HEIGHT_2 (BUFFER_HEIGHT/4)
#endif
#if BUFFER_WIDTH < 8
#define OPT_WIDTH_3 1
#else
#define OPT_WIDTH_3 (BUFFER_WIDTH/8)
#endif
#if BUFFER_HEIGHT < 8
#define OPT_HEIGHT_3 1
#else
#define OPT_HEIGHT_3 (BUFFER_HEIGHT/8)
#endif
#if BUFFER_WIDTH < 16
#define OPT_WIDTH_4 1
#else
#define OPT_WIDTH_4 (BUFFER_WIDTH/16)
#endif
#if BUFFER_HEIGHT < 16
#define OPT_HEIGHT_4 1
#else
#define OPT_HEIGHT_4 (BUFFER_HEIGHT/16)
#endif
#if BUFFER_WIDTH < 32
#define OPT_WIDTH_5 1
#else
#define OPT_WIDTH_5 (BUFFER_WIDTH/32)
#endif
#if BUFFER_HEIGHT < 32
#define OPT_HEIGHT_5 1
#else
#define OPT_HEIGHT_5 (BUFFER_HEIGHT/32)
#endif
#if BUFFER_WIDTH < 64
#define OPT_WIDTH_6 1
#else
#define OPT_WIDTH_6 (BUFFER_WIDTH/64)
#endif
#if BUFFER_HEIGHT < 64
#define OPT_HEIGHT_6 1
#else
#define OPT_HEIGHT_6 (BUFFER_HEIGHT/64)
#endif
#if BUFFER_WIDTH < 128
#define OPT_WIDTH_7 1
#else
#define OPT_WIDTH_7 (BUFFER_WIDTH/128)
#endif
#if BUFFER_HEIGHT < 128
#define OPT_HEIGHT_7 1
#else
#define OPT_HEIGHT_7 (BUFFER_HEIGHT/128)
#endif
#if BUFFER_WIDTH < 256
#define OPT_WIDTH_8 1
#else
#define OPT_WIDTH_8 (BUFFER_WIDTH/256)
#endif
#if BUFFER_HEIGHT < 256
#define OPT_HEIGHT_8 1
#else
#define OPT_HEIGHT_8 (BUFFER_HEIGHT/256)
#endif
#if BUFFER_WIDTH < 512
#define OPT_WIDTH_9 1
#else
#define OPT_WIDTH_9 (BUFFER_WIDTH/512)
#endif
#if BUFFER_HEIGHT < 512
#define OPT_HEIGHT_9 1
#else
#define OPT_HEIGHT_9 (BUFFER_HEIGHT/512)
#endif
#if BUFFER_WIDTH >= 32 && BUFFER_HEIGHT >= 32
#define SPEKTRA_LENS_MIPS 6
#elif BUFFER_WIDTH >= 16 && BUFFER_HEIGHT >= 16
#define SPEKTRA_LENS_MIPS 5
#elif BUFFER_WIDTH >= 8 && BUFFER_HEIGHT >= 8
#define SPEKTRA_LENS_MIPS 4
#elif BUFFER_WIDTH >= 4 && BUFFER_HEIGHT >= 4
#define SPEKTRA_LENS_MIPS 3
#else
#define SPEKTRA_LENS_MIPS 1
#endif
namespace Spektra {
#include "shader/Controls.fxh"

#include "shader/Resources.fxh"

bool PreviewingPreGrade()
{
    return PreviewPreGrade;
}
bool RunsFilmPipeline()
{
    return Strength > 0 && !PreviewingPreGrade();
}
#include "shader/Camera.fxh"
#include "shader/Lens.fxh"
#include "shader/Glare.fxh"
#include "shader/Film.fxh"
#include "shader/Finish.fxh"
void FilmVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!RunsFilmPipeline())
        position = float4(2, 2, 0, 1);
}

void LensVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && LensActive()))
        position = float4(2, 2, 0, 1);
}

void LensCaptureVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD,
                   out nointerpolation float zoom : TEXCOORD1)
{
    LensVS(id, position, uv);
    zoom = 1;
    if (RunsFilmPipeline() && LensActive())
        zoom = LensCropScale();
}

void FlareVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && FlareActive()))
        position = float4(2, 2, 0, 1);
}

void OpticalVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && OpticalActive()))
        position = float4(2, 2, 0, 1);
}

void HalationVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && Halation > 0))
        position = float4(2, 2, 0, 1);
}

void DevelopmentVS(uint id : SV_VertexID, out float4 position : SV_Position, out float2 uv : TEXCOORD)
{
    PostProcessVS(id, position, uv);
    if (!(RunsFilmPipeline() && Adjacency))
        position = float4(2, 2, 0, 1);
}
}
technique SpektraFilm < ui_label="SpektraFilm - film and print"; ui_tooltip="Standalone SDR film simulation. Use on the final game image after upscaling. Credits: Andrea Volpato (spektrafilm), hanatos (vkdt)."; > {
#include "Spektra-Passes.fxh"
}
