// Texture formats and atlas dimensions are part of the baked-asset contract.
texture2D ExposureT < source="Spektra-Exposure.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D ExposureS
{
    Texture=ExposureT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CurveT < source="Spektra-Curves.png"; >
{
    Width=2048;
    Height=80;
    Format=RGBA8;
};
sampler2D CurveS
{
    Texture=CurveT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print0T < source="Spektra-Print0.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print0S
{
    Texture=Print0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print1T < source="Spektra-Print1.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print1S
{
    Texture=Print1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print2T < source="Spektra-Print2.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print2S
{
    Texture=Print2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print3T < source="Spektra-Print3.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print3S
{
    Texture=Print3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print4T < source="Spektra-Print4.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print4S
{
    Texture=Print4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print5T < source="Spektra-Print5.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print5S
{
    Texture=Print5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print6T < source="Spektra-Print6.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print6S
{
    Texture=Print6T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Print7T < source="Spektra-Print7.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D Print7S
{
    Texture=Print7T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D RawT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    Format=RGBA16F;
};
sampler2D RawS
{
    Texture=RawT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D LogET
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    Format=RGBA16F;
};
sampler2D LogES
{
    Texture=LogET;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D InhibitorT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    MipLevels=2;
    Format=RGBA16F;
};
sampler2D InhibitorS
{
    Texture=InhibitorT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D HalH0T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D HalH0S
{
    Texture=HalH0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D HalH1T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D HalH1S
{
    Texture=HalH1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D HalH2T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D HalH2S
{
    Texture=HalH2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Hal0T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D Hal0S
{
    Texture=Hal0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Hal1T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D Hal1S
{
    Texture=Hal1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D Hal2T
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D Hal2S
{
    Texture=Hal2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CoupHCoreT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    Format=RGBA16F;
};
sampler2D CoupHCoreS
{
    Texture=CoupHCoreT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CoupCoreT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    Format=RGBA16F;
};
sampler2D CoupCoreS
{
    Texture=CoupCoreT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CoupHTailT
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D CoupHTailS
{
    Texture=CoupHTailT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CoupTailT
{
    Width=BUFFER_WIDTH/2;
    Height=BUFFER_HEIGHT/2;
    Format=RGBA16F;
};
sampler2D CoupTailS
{
    Texture=CoupTailT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};

texture2D OptH0T
{
    Width=OPT_WIDTH_0;
    Height=OPT_HEIGHT_0;
    Format=RGBA16F;
};
sampler2D OptH0S
{
    Texture=OptH0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV0T
{
    Width=OPT_WIDTH_0;
    Height=OPT_HEIGHT_0;
    Format=RGBA16F;
};
sampler2D OptV0S
{
    Texture=OptV0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH1T
{
    Width=OPT_WIDTH_1;
    Height=OPT_HEIGHT_1;
    Format=RGBA16F;
};
sampler2D OptH1S
{
    Texture=OptH1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV1T
{
    Width=OPT_WIDTH_1;
    Height=OPT_HEIGHT_1;
    Format=RGBA16F;
};
sampler2D OptV1S
{
    Texture=OptV1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH2T
{
    Width=OPT_WIDTH_2;
    Height=OPT_HEIGHT_2;
    Format=RGBA16F;
};
sampler2D OptH2S
{
    Texture=OptH2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV2T
{
    Width=OPT_WIDTH_2;
    Height=OPT_HEIGHT_2;
    Format=RGBA16F;
};
sampler2D OptV2S
{
    Texture=OptV2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH3T
{
    Width=OPT_WIDTH_3;
    Height=OPT_HEIGHT_3;
    Format=RGBA16F;
};
sampler2D OptH3S
{
    Texture=OptH3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV3T
{
    Width=OPT_WIDTH_3;
    Height=OPT_HEIGHT_3;
    Format=RGBA16F;
};
sampler2D OptV3S
{
    Texture=OptV3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH4T
{
    Width=OPT_WIDTH_4;
    Height=OPT_HEIGHT_4;
    Format=RGBA16F;
};
sampler2D OptH4S
{
    Texture=OptH4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV4T
{
    Width=OPT_WIDTH_4;
    Height=OPT_HEIGHT_4;
    Format=RGBA16F;
};
sampler2D OptV4S
{
    Texture=OptV4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH5T
{
    Width=OPT_WIDTH_5;
    Height=OPT_HEIGHT_5;
    Format=RGBA16F;
};
sampler2D OptH5S
{
    Texture=OptH5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV5T
{
    Width=OPT_WIDTH_5;
    Height=OPT_HEIGHT_5;
    Format=RGBA16F;
};
sampler2D OptV5S
{
    Texture=OptV5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH6T
{
    Width=OPT_WIDTH_6;
    Height=OPT_HEIGHT_6;
    Format=RGBA16F;
};
sampler2D OptH6S
{
    Texture=OptH6T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV6T
{
    Width=OPT_WIDTH_6;
    Height=OPT_HEIGHT_6;
    Format=RGBA16F;
};
sampler2D OptV6S
{
    Texture=OptV6T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH7T
{
    Width=OPT_WIDTH_7;
    Height=OPT_HEIGHT_7;
    Format=RGBA16F;
};
sampler2D OptH7S
{
    Texture=OptH7T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV7T
{
    Width=OPT_WIDTH_7;
    Height=OPT_HEIGHT_7;
    Format=RGBA16F;
};
sampler2D OptV7S
{
    Texture=OptV7T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH8T
{
    Width=OPT_WIDTH_8;
    Height=OPT_HEIGHT_8;
    Format=RGBA16F;
};
sampler2D OptH8S
{
    Texture=OptH8T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV8T
{
    Width=OPT_WIDTH_8;
    Height=OPT_HEIGHT_8;
    Format=RGBA16F;
};
sampler2D OptV8S
{
    Texture=OptV8T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptH9T
{
    Width=OPT_WIDTH_9;
    Height=OPT_HEIGHT_9;
    Format=RGBA16F;
};
sampler2D OptH9S
{
    Texture=OptH9T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OptV9T
{
    Width=OPT_WIDTH_9;
    Height=OPT_HEIGHT_9;
    Format=RGBA16F;
};
sampler2D OptV9S
{
    Texture=OptV9T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D OpticalRawT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    MipLevels=2;
    Format=RGBA16F;
};
sampler2D OpticalRawS
{
    Texture=OpticalRawT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};

texture2D LensInputT
{
    Width=BUFFER_WIDTH;
    Height=BUFFER_HEIGHT;
    MipLevels=SPEKTRA_LENS_MIPS;
    Format=RGBA16F;
};
sampler2D LensInputS
{
    Texture=LensInputT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D LensPSFT < source="Spektra-LensPSF.png"; >
{
    Width=48;
    Height=1224;
    Format=RGBA8;
};
sampler2D LensPSFS
{
    Texture=LensPSFT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};

texture2D FlareAT
{
    Width=BUFFER_WIDTH/4;
    Height=BUFFER_HEIGHT/4;
    Format=RGBA16F;
};
sampler2D FlareAS
{
    Texture=FlareAT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D FlareBT
{
    Width=BUFFER_WIDTH/4;
    Height=BUFFER_HEIGHT/4;
    Format=RGBA16F;
};
sampler2D FlareBS
{
    Texture=FlareBT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D FlareCT
{
    Width=BUFFER_WIDTH/4;
    Height=BUFFER_HEIGHT/4;
    Format=RGBA16F;
};
sampler2D FlareCS
{
    Texture=FlareCT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D LensDirtT < source="Spektra-LensDirt.png"; >
{
    Width=3840;
    Height=2160;
    Format=RGBA8;
};
sampler2D LensDirtS
{
    Texture=LensDirtT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CameraMeterT
{
    Width=64;
    Height=64;
    MipLevels=7;
    Format=RGBA32F;
};
sampler2D CameraMeterS
{
    Texture=CameraMeterT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D CameraStateT
{
    Width=1;
    Height=1;
    Format=RGBA32F;
};
sampler2D CameraStateS
{
    Texture=CameraStateT;
    MinFilter=POINT;
    MagFilter=POINT;
    MipFilter=POINT;
};
texture2D CameraHistoryT
{
    Width=1;
    Height=1;
    Format=RGBA32F;
};
sampler2D CameraHistoryS
{
    Texture=CameraHistoryT;
    MinFilter=POINT;
    MagFilter=POINT;
    MipFilter=POINT;
};
texture2D VeilT
{
    Width=(BUFFER_WIDTH+1)/2;
    Height=(BUFFER_HEIGHT+1)/2;
    Format=RGBA16F;
};
sampler2D VeilS
{
    Texture=VeilT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D FilmDamageT < source="Spektra-FilmDamage.png"; >
{
    Width=2048;
    Height=2048;
    Format=RGBA8;
};
sampler2D FilmDamageS
{
    Texture=FilmDamageT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
// Separate glare pyramid: no aliasing with optical diffusion buffers.
texture2D VeilDown1T
{
    Width=(BUFFER_WIDTH+4-1)/4;
    Height=(BUFFER_HEIGHT+4-1)/4;
    Format=RGBA16F;
};
sampler2D VeilDown1S
{
    Texture=VeilDown1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilDown2T
{
    Width=(BUFFER_WIDTH+8-1)/8;
    Height=(BUFFER_HEIGHT+8-1)/8;
    Format=RGBA16F;
};
sampler2D VeilDown2S
{
    Texture=VeilDown2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilDown3T
{
    Width=(BUFFER_WIDTH+16-1)/16;
    Height=(BUFFER_HEIGHT+16-1)/16;
    Format=RGBA16F;
};
sampler2D VeilDown3S
{
    Texture=VeilDown3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilDown4T
{
    Width=(BUFFER_WIDTH+32-1)/32;
    Height=(BUFFER_HEIGHT+32-1)/32;
    Format=RGBA16F;
};
sampler2D VeilDown4S
{
    Texture=VeilDown4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilDown5T
{
    Width=(BUFFER_WIDTH+64-1)/64;
    Height=(BUFFER_HEIGHT+64-1)/64;
    Format=RGBA16F;
};
sampler2D VeilDown5S
{
    Texture=VeilDown5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilDown6T
{
    Width=(BUFFER_WIDTH+128-1)/128;
    Height=(BUFFER_HEIGHT+128-1)/128;
    Format=RGBA16F;
};
sampler2D VeilDown6S
{
    Texture=VeilDown6T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp0T
{
    Width=(BUFFER_WIDTH+2-1)/2;
    Height=(BUFFER_HEIGHT+2-1)/2;
    Format=RGBA16F;
};
sampler2D VeilUp0S
{
    Texture=VeilUp0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp1T
{
    Width=(BUFFER_WIDTH+4-1)/4;
    Height=(BUFFER_HEIGHT+4-1)/4;
    Format=RGBA16F;
};
sampler2D VeilUp1S
{
    Texture=VeilUp1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp2T
{
    Width=(BUFFER_WIDTH+8-1)/8;
    Height=(BUFFER_HEIGHT+8-1)/8;
    Format=RGBA16F;
};
sampler2D VeilUp2S
{
    Texture=VeilUp2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp3T
{
    Width=(BUFFER_WIDTH+16-1)/16;
    Height=(BUFFER_HEIGHT+16-1)/16;
    Format=RGBA16F;
};
sampler2D VeilUp3S
{
    Texture=VeilUp3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp4T
{
    Width=(BUFFER_WIDTH+32-1)/32;
    Height=(BUFFER_HEIGHT+32-1)/32;
    Format=RGBA16F;
};
sampler2D VeilUp4S
{
    Texture=VeilUp4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D VeilUp5T
{
    Width=(BUFFER_WIDTH+64-1)/64;
    Height=(BUFFER_HEIGHT+64-1)/64;
    Format=RGBA16F;
};
sampler2D VeilUp5S
{
    Texture=VeilUp5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
#if BUFFER_WIDTH >= 2048 && BUFFER_HEIGHT >= 2048
#define LENS_HIGHLIGHT_MIPS 10
#elif BUFFER_WIDTH >= 1024 && BUFFER_HEIGHT >= 1024
#define LENS_HIGHLIGHT_MIPS 9
#elif BUFFER_WIDTH >= 512 && BUFFER_HEIGHT >= 512
#define LENS_HIGHLIGHT_MIPS 8
#elif BUFFER_WIDTH >= 256 && BUFFER_HEIGHT >= 256
#define LENS_HIGHLIGHT_MIPS 7
#elif BUFFER_WIDTH >= 128 && BUFFER_HEIGHT >= 128
#define LENS_HIGHLIGHT_MIPS 6
#elif BUFFER_WIDTH >= 64 && BUFFER_HEIGHT >= 64
#define LENS_HIGHLIGHT_MIPS 5
#elif BUFFER_WIDTH >= 32 && BUFFER_HEIGHT >= 32
#define LENS_HIGHLIGHT_MIPS 4
#elif BUFFER_WIDTH >= 16 && BUFFER_HEIGHT >= 16
#define LENS_HIGHLIGHT_MIPS 3
#elif BUFFER_WIDTH >= 8 && BUFFER_HEIGHT >= 8
#define LENS_HIGHLIGHT_MIPS 2
#else
#define LENS_HIGHLIGHT_MIPS 1
#endif
texture2D DiffractionKernelT < source="Spektra-Diffraction.png"; >
{
    Width=24;
    Height=30;
    Format=RGBA8;
};
sampler2D DiffractionKernelS
{
    Texture=DiffractionKernelT;
    MinFilter=POINT;
    MagFilter=POINT;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D LensHighlightT
{
    Width=(BUFFER_WIDTH+3)/4;
    Height=(BUFFER_HEIGHT+3)/4;
    MipLevels=LENS_HIGHLIGHT_MIPS;
    Format=RGBA16F;
};
sampler2D LensHighlightS
{
    Texture=LensHighlightT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=LINEAR;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D DiffractionT
{
    Width=(BUFFER_WIDTH+3)/4;
    Height=(BUFFER_HEIGHT+3)/4;
    Format=RGBA16F;
};
sampler2D DiffractionS
{
    Texture=DiffractionT;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft0T < source="Spektra-PrintSoft0.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft0S
{
    Texture=PrintSoft0T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft1T < source="Spektra-PrintSoft1.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft1S
{
    Texture=PrintSoft1T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft2T < source="Spektra-PrintSoft2.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft2S
{
    Texture=PrintSoft2T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft3T < source="Spektra-PrintSoft3.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft3S
{
    Texture=PrintSoft3T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft4T < source="Spektra-PrintSoft4.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft4S
{
    Texture=PrintSoft4T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft5T < source="Spektra-PrintSoft5.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft5S
{
    Texture=PrintSoft5T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft6T < source="Spektra-PrintSoft6.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft6S
{
    Texture=PrintSoft6T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};
texture2D PrintSoft7T < source="Spektra-PrintSoft7.png"; >
{
    Width=1089;
    Height=1320;
    Format=RGBA8;
};
sampler2D PrintSoft7S
{
    Texture=PrintSoft7T;
    MinFilter=LINEAR;
    MagFilter=LINEAR;
    MipFilter=POINT;
    AddressU=CLAMP;
    AddressV=CLAMP;
};

