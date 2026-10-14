// Control declarations follow their visible menu order. Preserve preset identifiers.
// Pre-grading
uniform bool PreGrade <
    ui_category="Pre-grading";
    ui_label="Enable pre-grading";
> = false;

uniform bool PreviewPreGrade <
    ui_category="Pre-grading";
    ui_label="Preview pre-grade";
    ui_tooltip="Show pre-grading and auto exposure without film, print or lens effects. Uses an sRGB display preview with highlight compression; does not change metering. Film exposure is excluded.";
> = false;

uniform float PreExposure <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Input exposure (stops)";
    ui_min=-3.0;
    ui_max=3.0;
> = 0.0;

uniform float PreTemperature <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Temperature (K)";
    ui_min=2000.0;
    ui_max=12000.0;
    ui_step=50.0;
    ui_tooltip="Creative temperature filter, neutral at 6500 K; not camera white-balance calibration.";
> = 6500.0;

uniform float PreTempMix <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Temperature mix";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

uniform float PrePreserve <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Temperature luminance preservation";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

uniform float PreBrightness <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Brightness";
    ui_min=0.25;
    ui_max=2.0;
> = 1.0;

uniform float PreGamma <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Gamma";
    ui_min=0.25;
    ui_max=2.5;
> = 1.0;

uniform float PreContrast <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Contrast";
    ui_min=0.0;
    ui_max=2.0;
> = 1.0;

uniform float PreSaturation <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Saturation";
    ui_min=0.0;
    ui_max=2.0;
> = 1.0;

uniform float PreSatLimit <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Saturation limit";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

uniform float PreFlatten <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Flatten input";
    ui_min=0.0;
    ui_max=1.0;
    ui_tooltip="Creative contrast reduction. Does not recover an ungraded image or create camera Log.";
> = 0.0;

uniform float PreShadows <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Shadows (stops)";
    ui_min=0.0;
    ui_max=2.0;
    ui_step=0.05;
    ui_tooltip="Selective lift before film response. The lift tapers toward the range boundary; does not add a grey pedestal or recover clipped detail.";
> = 0.0;

uniform float PreShadowRange <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Shadows range (linear)";
    ui_min=0.03;
    ui_max=0.5;
    ui_step=0.01;
    ui_tooltip="Luminance where shadow lifting reaches zero. Lower values restrict it to darker tones; 0.18 is the starting point.";
> = 0.18;

uniform float PreShadowBlack <
    ui_category="Pre-grading";
    ui_type="slider";
    ui_label="Preserve deep blacks";
    ui_min=0.0;
    ui_max=1.0;
    ui_tooltip="Protects the darkest detail from lift. Exact black stays black at every setting.";
> = 1.0;

// Camera adaptation
uniform bool AutoExposure <
    ui_category="Camera adaptation";
    ui_label="Automatic exposure";
    ui_tooltip="Meters the pre-graded scene before film processing. Does not change the selected film stock or the game's own exposure.";
> = false;

uniform int AutoMetering <
    ui_category="Camera adaptation";
    ui_type="combo";
    ui_label="Metering";
    ui_items="Average\0Centre-weighted\0Centre spot\0";
> = 1;

uniform float AutoTarget <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Meter target (linear)";
    ui_min=0.03;
    ui_max=0.5;
    ui_step=0.01;
    ui_tooltip="Input luminance target, not final screen brightness. 0.18 is a starting point, not a calibrated light meter.";
> = 0.18;

uniform float AutoMin <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Minimum correction (stops)";
    ui_min=-6.0;
    ui_max=0.0;
> = -2.0;

uniform float AutoMax <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Maximum correction (stops)";
    ui_min=0.0;
    ui_max=6.0;
    ui_tooltip="Limit shadow lifting to preserve dark scenes.";
> = 2.0;

uniform float AutoBrightenTime <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Brighten response (seconds)";
    ui_min=0.05;
    ui_max=5.0;
    ui_tooltip="Time to cover half the remaining exposure difference when entering a dark scene.";
> = 1.0;

uniform float AutoDarkenTime <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Darken response (seconds)";
    ui_min=0.05;
    ui_max=5.0;
    ui_tooltip="Time to cover half the remaining exposure difference when entering a bright scene.";
> = 0.25;

uniform float AutoCompensation <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Meter compensation (stops)";
    ui_min=-3.0;
    ui_max=3.0;
> = 0.0;

uniform bool AutoISOGrain <
    ui_category="Camera adaptation";
    ui_label="Auto ISO grain";
    ui_tooltip="Requires Automatic exposure. Positive exposure correction increases grain relative to the selected stock. Simulated exposure-index response; does not add exposure or change film curves.";
> = false;

uniform float AutoISOMax <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="Maximum ISO increase (stops)";
    ui_min=0.0;
    ui_max=6.0;
    ui_step=0.25;
    ui_tooltip="Limits the grain response, not exposure correction. +2 stops represents four times the base exposure index.";
> = 2.0;

uniform float AutoISOResponse <
    ui_category="Camera adaptation";
    ui_type="slider";
    ui_label="ISO grain response";
    ui_min=0.0;
    ui_max=1.0;
    ui_step=0.05;
    ui_tooltip="At 1, +2 ISO stops doubles grain amplitude. Zero preserves the stock's existing grain. Grain size stays fixed.";
> = 1.0;

// Film and print
uniform int Stock <
    ui_category="Film and print";
    ui_type="combo";
    ui_label="Film stock";
    ui_items="Kodak Ektar 100\0Kodak Portra 160\0Kodak Portra 400\0Kodak Portra 800\0Kodak Portra 800 push +1\0Kodak Portra 800 push +2\0Kodak Gold 200\0Kodak Ultramax 400\0Kodak Vision3 50D\0Kodak Vision3 250D\0Kodak Verita 200D\0Kodak Vision3 200T\0Kodak Vision3 500T\0Fujifilm Pro 400H\0Fujifilm C200\0Fujifilm X-TRA 400\0Kodak Ektachrome 100\0Kodak Kodachrome 64\0Fujifilm Velvia 100\0Fujifilm Provia 100F\0";
> = 2;

uniform int Paper <
    ui_category="Film and print";
    ui_type="combo";
    ui_label="Print stock";
    ui_items="Kodak Ultra Endura\0Kodak Endura Premier\0Kodak Ektacolor Edge\0Kodak Supra Endura\0Kodak Portra Endura\0Fujifilm Crystal Archive Type II\0Kodak 2383\0Kodak 2393\0";
    ui_tooltip="Reversal films are scanned directly; paper selection does not affect them.";
> = 4;

uniform float PaperContrast <
    ui_category="Film and print";
    ui_type="slider";
    ui_label="Paper contrast";
    ui_min=0.0;
    ui_max=1.0;
    ui_step=0.01;
    ui_tooltip="1.0 preserves the stock profile. 0.8 uses upstream softer paper curves; 0-0.8 compresses print-input density toward neutral grey (0 is flat); 0.8-1 blends the baked responses. Does not affect reversal films.";
> = 1.0;

uniform float Exposure <
    ui_category="Film and print";
    ui_type="slider";
    ui_label="Film exposure (stops)";
    ui_min=-3.0;
    ui_max=3.0;
    ui_step=0.05;
> = 0.0;

uniform float Strength <
    ui_category="Film and print";
    ui_type="slider";
    ui_label="Film strength";
    ui_min=0.0;
    ui_max=1.0;
>
// Keep the saved value available when toggling Performance Mode.
#if !__RESHADE_PERFORMANCE_MODE__
 = 1.0
#endif
;

uniform float Format <
    ui_category="Film and print";
    ui_type="slider";
    ui_label="Film width (mm)";
    ui_min=8.0;
    ui_max=70.0;
> = 35.0;

// Halation and development
uniform float Halation <
    ui_category="Halation and development";
    ui_type="slider";
    ui_label="Halation amount";
    ui_min=0.0;
    ui_max=3.0;
> = 1.0;

uniform bool Adjacency <
    ui_category="Halation and development";
    ui_label="Development diffusion";
    ui_tooltip="Spatial developer-inhibitor diffusion. Local colour chemistry remains active when disabled.";
> = true;

// Lens character
uniform int LensModel <
    ui_category="Lens character";
    ui_type="combo";
    ui_label="Lens profile";
    ui_items="Off\0EF 50mm f/1.8-inspired - APS-C\0EF 40mm f/2.8 STM-inspired - full frame\0EF 85mm f/1.8-inspired - full frame\0EF 100mm f/2.8 Macro-inspired - full frame\0";
    ui_tooltip="DeepLens optical-design PSFs plus Lensfun calibration. Fixed 10 m focus; no depth-of-field. Lens coverage follows the profile, independently of Film width.";
> = 0;

uniform int LensAperture <
    ui_category="Lens character";
    ui_type="combo";
    ui_label="Lens aperture";
    ui_items="Wide open (f/1.8 or f/2.8)\0Mid (f/2.8 or f/4)\0Stopped down (f/4 or f/5.6)\0";
    ui_tooltip="50mm and 85mm: f/1.8, f/2.8, f/4. 40mm and 100mm: f/2.8, f/4, f/5.6.";
> = 1;

uniform float LensSoftness <
    ui_category="Lens character";
    ui_type="slider";
    ui_label="Optical aberration / softness";
    ui_min=0.0;
    ui_max=2.0;
    ui_tooltip="1 uses the baked optical blur scale; other values are creative scaling. Includes wavelength-dependent softness and off-axis blur.";
> = 1.0;

uniform float LensDistortion <
    ui_category="Lens character";
    ui_type="slider";
    ui_label="Lens distortion";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

uniform float LensVignette <
    ui_category="Lens character";
    ui_type="slider";
    ui_label="Lens vignetting";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

uniform float LensCA <
    ui_category="Lens character";
    ui_type="slider";
    ui_label="Chromatic aberration";
    ui_min=0.0;
    ui_max=4.0;
    ui_tooltip="1 uses the selected Lensfun calibration. The 50mm profile has very subtle lateral fringing. Colour-dependent blur is controlled by Optical aberration / softness.";
> = 1.0;

uniform int LensQuality <
    ui_category="Lens character";
    ui_type="combo";
    ui_label="Lens sampling quality";
    ui_items="Balanced (16 samples per colour)\0High (32 samples per colour)\0";
> = 0;

uniform bool LensAutoCrop <
    ui_category="Lens character";
    ui_label="Crop warped edges";
    ui_tooltip="Small automatic zoom to hide borders introduced by distortion. Blur samples at the screen edge use clamping.";
> = true;

uniform float FlareThreshold <
    ui_category="Lens character";
    ui_type="slider";
    ui_label="Optical highlight threshold (linear)";
    ui_min=0.1;
    ui_max=1.0;
> = 0.7;

uniform bool LinkLensAperture <
    ui_category="Lens character";
    ui_label="Link diffraction and flare to lens aperture";
    ui_tooltip="Uses the existing lens aperture for diffraction width, blade shape and ghost footprint. Manual effect amounts remain available.";
> = true;

uniform int LensEffectsProfile <
    ui_category="Lens character";
    ui_label="Diffraction / flare profile";
    ui_type="combo";
    ui_items="Follow lens (50mm if off)\0EF 50mm inspired\0EF 40mm inspired\0EF 85mm inspired\0EF 100mm inspired\0";
> = 0;

uniform int LensEffectsAperture <
    ui_category="Lens character";
    ui_label="Unlinked effects aperture";
    ui_type="combo";
    ui_items="Wide open\0Middle\0Stopped down\0";
    ui_tooltip="Used only when aperture linking is disabled. No DOF or exposure change.";
> = 1;

// Optical diffusion
uniform int OpticalFilter <
    ui_category="Optical diffusion";
    ui_type="combo";
    ui_label="Diffusion filter";
    ui_items="Off\0Glimmerglass\0Black Pro-Mist\0Pro-Mist\0CineBloom\0";
    ui_tooltip="Energy-conserving approximation of spektrafilm optical filters, before halation and grain.";
> = 0;

uniform float OpticalStrength <
    ui_category="Optical diffusion";
    ui_type="slider";
    ui_label="Filter strength";
    ui_min=0.0;
    ui_max=2.0;
    ui_step=0.125;
    ui_tooltip="Nominal strengths: 0.125 (1/8), 0.25 (1/4), 0.5, 1, 2.";
> = 0.25;

uniform float OpticalSpread <
    ui_category="Optical diffusion";
    ui_type="slider";
    ui_label="Diffusion spread";
    ui_min=0.25;
    ui_max=2.0;
> = 1.0;

// Veiling glare
uniform float VeilStrength <
    ui_category="Veiling glare";
    ui_label="Veiling glare amount";
    ui_type="slider";
    ui_min=0.0;
    ui_max=0.5;
    ui_tooltip="Fraction of scene light redistributed into broad glare before film response. Independent of optical diffusion; zero disables it.";
> = 0.0;

uniform float VeilSpread <
    ui_category="Veiling glare";
    ui_label="Glare spread";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
> = 0.5;

// Lens flare
uniform float FlareStrength <
    ui_category="Lens flare";
    ui_type="slider";
    ui_label="Flare strength";
    ui_min=0.0;
    ui_max=2.0;
    ui_tooltip="Screen-space flare from visible bright pixels, before film development. Bright UI can also trigger it. Zero disables flare. Independent of lens profile; not calibrated optical reflections.";
> = 0.0;

uniform bool ProfileFlare <
    ui_category="Lens flare";
    ui_label="Use lens-specific ghost paths";
    ui_tooltip="Baked paraxial double reflections from the lens prescription. Coating colours are assumed; this is not a measured retail-lens reconstruction. Off restores Chapman ghosts.";
> = false;

uniform float FlareGhosts <
    ui_category="Lens flare";
    ui_type="slider";
    ui_label="Reflection ghosts";
    ui_min=0.0;
    ui_max=2.0;
> = 1.0;

uniform float FlareHalo <
    ui_category="Lens flare";
    ui_type="slider";
    ui_label="Halo";
    ui_min=0.0;
    ui_max=2.0;
> = 0.5;

uniform float CoatingColour <
    ui_category="Lens flare";
    ui_label="Ghost coating colour";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
> = 1.0;

// Lens dirt
uniform float LensDirtAmount <
    ui_category="Lens dirt";
    ui_type="slider";
    ui_label="Dirt amount";
    ui_min=0.0;
    ui_max=3.0;
    ui_tooltip="4K Unity lens-dirt mask illuminated by lens flare. Requires flare strength and ghosts or halo above zero. Adds scattered light; does not darken the scene.";
> = 0.0;

uniform float LensDirtScale <
    ui_category="Lens dirt";
    ui_type="slider";
    ui_label="Dirt scale";
    ui_min=1.0;
    ui_max=3.0;
    ui_tooltip="Zoom into the mask without tiling; preserves its proportions on different screen shapes.";
> = 1.0;

// Aperture diffraction
uniform float DiffractionAmount <
    ui_category="Aperture diffraction";
    ui_label="Diffraction amount";
    ui_type="slider";
    ui_min=0.0;
    ui_max=2.0;
    ui_tooltip="FFT-derived aperture diffraction tails from visible highlights, before film response. Uses the optical highlight threshold under Lens character. Zero disables it.";
> = 0.0;

uniform float DiffractionScale <
    ui_category="Aperture diffraction";
    ui_label="Diffraction size multiplier";
    ui_type="slider";
    ui_min=0.5;
    ui_max=16.0;
    ui_tooltip="1 uses wavelength x f-number scaling; larger values exaggerate the small physical diffraction pattern. Sampling quality follows Lens sampling quality.";
> = 4.0;

uniform int DiffractionBlades <
    ui_category="Aperture diffraction";
    ui_label="Blade shape override";
    ui_type="combo";
    ui_items="From lens profile\0Five blades\0Six blades\0Seven blades\0Eight blades\0Nine blades\0";
> = 0;

uniform float DiffractionRotation <
    ui_category="Aperture diffraction";
    ui_label="Blade rotation (degrees)";
    ui_type="slider";
    ui_min=-180.0;
    ui_max=180.0;
> = 0.0;

// Grain
uniform float Grain <
    ui_category="Grain";
    ui_type="slider";
    ui_label="Grain amount";
    ui_min=0.0;
    ui_max=2.0;
> = 1.0;

uniform float GrainSize <
    ui_category="Grain";
    ui_type="slider";
    ui_label="Grain size";
    ui_min=0.5;
    ui_max=3.0;
> = 1.0;

uniform bool Animate <
    ui_category="Grain";
    ui_label="Animate grain";
> = true;

// Film damage
uniform float DamageAmount <
    ui_category="Film damage";
    ui_label="Film damage amount";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
    ui_tooltip="Real scanned defects, applied at the final image after upscaling. Controls opacity, not population. Zero disables all film damage.";
> = 0.0;

uniform float DamageDust <
    ui_category="Film damage";
    ui_label="Dust density";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
> = 0.35;

uniform float DamageHair <
    ui_category="Film damage";
    ui_label="Hair density";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
> = 0.12;

uniform float DamageScratch <
    ui_category="Film damage";
    ui_label="Scratch density";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
> = 0.12;

uniform float DamageScale <
    ui_category="Film damage";
    ui_label="Defect size";
    ui_type="slider";
    ui_min=0.5;
    ui_max=2.0;
    ui_tooltip="Resolution-independent size. Scanned coverage and irregular edges are retained.";
> = 1.0;

uniform float DamageFPS <
    ui_category="Film damage";
    ui_label="Film transport rate";
    ui_type="slider";
    ui_min=8.0;
    ui_max=48.0;
    ui_step=1.0;
    ui_tooltip="Defect animation rate, independent of game FPS. Hairs persist for half a second and scratches for two seconds at 24 fps.";
> = 24.0;

uniform float DamageLightShare <
    ui_category="Film damage";
    ui_label="Light-mark proportion";
    ui_type="slider";
    ui_min=0.0;
    ui_max=1.0;
    ui_tooltip="0 gives dark print/gate marks; 1 gives light negative-scan marks. Intermediate values mix whole defects, preserving their scanned opacity.";
> = 0.65;

uniform bool DamageAnimate <
    ui_category="Film damage";
    ui_label="Animate film damage";
> = true;

uniform int DamageSeed <
    ui_category="Film damage";
    ui_label="Damage seed";
    ui_type="slider";
    ui_min=0;
    ui_max=1000;
> = 1;

// Frame timing
uniform int Tick <
    source="framecount";
>;

uniform float FrameTime <
    source="frametime";
>;

// Legacy preset field; the current glare model does not use a threshold.
uniform float VeilThreshold <
    hidden=true;
> = 0.0;

uniform float DamageTime <
    source="timer";
>;

