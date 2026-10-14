// Shared pass sequence, included inside both techniques. Intentionally no include guard.
pass CameraMeter
{
    VertexShader = Spektra::CameraMeterVS;
    PixelShader = Spektra::CameraMeterPS;
    RenderTarget = Spektra::CameraMeterT;
    GenerateMipMaps = true;
}
pass CameraAdapt
{
    VertexShader = Spektra::CameraStateVS;
    PixelShader = Spektra::CameraAdaptPS;
    RenderTarget = Spektra::CameraStateT;
    GenerateMipMaps = false;
}
pass CameraHistory
{
    VertexShader = Spektra::CameraStateVS;
    PixelShader = Spektra::CameraHistoryPS;
    RenderTarget = Spektra::CameraHistoryT;
    GenerateMipMaps = false;
}
pass LensCapture
{
    VertexShader = Spektra::LensCaptureVS;
    PixelShader = Spektra::LensCapturePS;
    RenderTarget = Spektra::LensInputT;
    GenerateMipMaps = true;
}
// Reuse OptH0T until exposure is evaluated; optical diffusion overwrites it afterward.
pass LensBlur
{
    VertexShader = Spektra::LensVS;
    PixelShader = Spektra::LensBlurPS;
    RenderTarget = Spektra::OptH0T;
}
pass LensHighlights
{
    VertexShader = Spektra::LensHighlightVS;
    PixelShader = Spektra::LensHighlightPS;
    RenderTarget = Spektra::LensHighlightT;
    GenerateMipMaps = true;
}
pass ApertureDiffraction
{
    VertexShader = Spektra::DiffractionVS;
    PixelShader = Spektra::DiffractionPS;
    RenderTarget = Spektra::DiffractionT;
    GenerateMipMaps = false;
}
// Glare must follow lens distortion so its sources align with the visible image.
pass VeilingGlare
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilCapturePS;
    RenderTarget = Spektra::VeilT;
    GenerateMipMaps = false;
}
pass VeilDown1
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown1PS;
    RenderTarget = Spektra::VeilDown1T;
    GenerateMipMaps = false;
}
pass VeilDown2
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown2PS;
    RenderTarget = Spektra::VeilDown2T;
    GenerateMipMaps = false;
}
pass VeilDown3
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown3PS;
    RenderTarget = Spektra::VeilDown3T;
    GenerateMipMaps = false;
}
pass VeilDown4
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown4PS;
    RenderTarget = Spektra::VeilDown4T;
    GenerateMipMaps = false;
}
pass VeilDown5
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown5PS;
    RenderTarget = Spektra::VeilDown5T;
    GenerateMipMaps = false;
}
pass VeilDown6
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilDown6PS;
    RenderTarget = Spektra::VeilDown6T;
    GenerateMipMaps = false;
}
pass VeilUp5
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp5PS;
    RenderTarget = Spektra::VeilUp5T;
    GenerateMipMaps = false;
}
pass VeilUp4
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp4PS;
    RenderTarget = Spektra::VeilUp4T;
    GenerateMipMaps = false;
}
pass VeilUp3
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp3PS;
    RenderTarget = Spektra::VeilUp3T;
    GenerateMipMaps = false;
}
pass VeilUp2
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp2PS;
    RenderTarget = Spektra::VeilUp2T;
    GenerateMipMaps = false;
}
pass VeilUp1
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp1PS;
    RenderTarget = Spektra::VeilUp1T;
    GenerateMipMaps = false;
}
pass VeilUp0
{
    VertexShader = Spektra::VeilVS;
    PixelShader = Spektra::VeilUp0PS;
    RenderTarget = Spektra::VeilUp0T;
    GenerateMipMaps = false;
}
pass FlareExtract
{
    VertexShader = Spektra::FlareVS;
    PixelShader = Spektra::FlareExtractPS;
    RenderTarget = Spektra::FlareAT;
}
pass FlareFeatures
{
    VertexShader = Spektra::FlareVS;
    PixelShader = Spektra::FlareFeaturesPS;
    RenderTarget = Spektra::FlareBT;
}
pass FlareH
{
    VertexShader = Spektra::FlareVS;
    PixelShader = Spektra::FlareHPS;
    RenderTarget = Spektra::FlareCT;
}
pass FlareV
{
    VertexShader = Spektra::FlareVS;
    PixelShader = Spektra::FlareVPS;
    RenderTarget = Spektra::FlareAT;
}
pass Expose
{
    VertexShader = Spektra::FilmVS;
    PixelShader = Spektra::ExposePS;
    RenderTarget = Spektra::RawT;
    GenerateMipMaps = false;
}
pass OptH0
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH0PS;
    RenderTarget = Spektra::OptH0T;
}
pass OptV0
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV0PS;
    RenderTarget = Spektra::OptV0T;
}
pass OptH1
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH1PS;
    RenderTarget = Spektra::OptH1T;
}
pass OptV1
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV1PS;
    RenderTarget = Spektra::OptV1T;
}
pass OptH2
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH2PS;
    RenderTarget = Spektra::OptH2T;
}
pass OptV2
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV2PS;
    RenderTarget = Spektra::OptV2T;
}
pass OptH3
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH3PS;
    RenderTarget = Spektra::OptH3T;
}
pass OptV3
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV3PS;
    RenderTarget = Spektra::OptV3T;
}
pass OptH4
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH4PS;
    RenderTarget = Spektra::OptH4T;
}
pass OptV4
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV4PS;
    RenderTarget = Spektra::OptV4T;
}
pass OptH5
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH5PS;
    RenderTarget = Spektra::OptH5T;
}
pass OptV5
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV5PS;
    RenderTarget = Spektra::OptV5T;
}
pass OptH6
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH6PS;
    RenderTarget = Spektra::OptH6T;
}
pass OptV6
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV6PS;
    RenderTarget = Spektra::OptV6T;
}
pass OptH7
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH7PS;
    RenderTarget = Spektra::OptH7T;
}
pass OptV7
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV7PS;
    RenderTarget = Spektra::OptV7T;
}
pass OptH8
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH8PS;
    RenderTarget = Spektra::OptH8T;
}
pass OptV8
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV8PS;
    RenderTarget = Spektra::OptV8T;
}
pass OptH9
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptH9PS;
    RenderTarget = Spektra::OptH9T;
}
pass OptV9
{
    VertexShader = Spektra::OpticalVS;
    PixelShader = Spektra::OptV9PS;
    RenderTarget = Spektra::OptV9T;
}
pass OpticalMerge
{
    VertexShader = Spektra::FilmVS;
    PixelShader = Spektra::OpticalMergePS;
    RenderTarget = Spektra::OpticalRawT;
    GenerateMipMaps = true;
}
pass HalH0
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::HalH0PS;
    RenderTarget = Spektra::HalH0T;
}
pass Hal0
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::Hal0PS;
    RenderTarget = Spektra::Hal0T;
}
pass HalH1
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::HalH1PS;
    RenderTarget = Spektra::HalH1T;
}
pass Hal1
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::Hal1PS;
    RenderTarget = Spektra::Hal1T;
}
pass HalH2
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::HalH2PS;
    RenderTarget = Spektra::HalH2T;
}
pass Hal2
{
    VertexShader = Spektra::HalationVS;
    PixelShader = Spektra::Hal2PS;
    RenderTarget = Spektra::Hal2T;
}
pass Prepare
{
    VertexShader = Spektra::FilmVS;
    PixelShader = Spektra::PreparePS;
    RenderTarget = Spektra::LogET;
    RenderTarget1 = Spektra::InhibitorT;
    GenerateMipMaps = true;
}
pass CoupHCore
{
    VertexShader = Spektra::DevelopmentVS;
    PixelShader = Spektra::CoupHCorePS;
    RenderTarget = Spektra::CoupHCoreT;
}
pass CoupCore
{
    VertexShader = Spektra::DevelopmentVS;
    PixelShader = Spektra::CoupCorePS;
    RenderTarget = Spektra::CoupCoreT;
}
pass CoupHTail
{
    VertexShader = Spektra::DevelopmentVS;
    PixelShader = Spektra::CoupHTailPS;
    RenderTarget = Spektra::CoupHTailT;
}
pass CoupTail
{
    VertexShader = Spektra::DevelopmentVS;
    PixelShader = Spektra::CoupTailPS;
    RenderTarget = Spektra::CoupTailT;
}
pass Scan
{
    VertexShader = PostProcessVS;
    PixelShader = Spektra::ScanPS;
}
