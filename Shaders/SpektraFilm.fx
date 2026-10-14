// SpektraFilm: standalone SDR ReShade adaptation.
// Colour model: Andrea Volpato / spektrafilm (GPL-3.0).
// Density-domain grain adapted from vkdt / hanatos (GPL-3.0).
// Profiles/LUTs: CC BY-SA 4.0. See accompanying notices and README.
#include "ReShade.fxh"
// Generated from spektrafilm profiles by Andrea Volpato, CC BY-SA 4.0.
float3 LookupDMax(int index) {
return index == 0 ? float3(1.89085869,1.78107406,2.27068513) :
index == 1 ? float3(1.67107296,1.74467965,2.02525732) :
index == 2 ? float3(1.99179638,1.79883707,2.16391095) :
index == 3 ? float3(1.89873949,1.73148196,2.02552508) :
index == 4 ? float3(2.29731667,1.95982682,2.25704826) :
index == 5 ? float3(2.51883226,2.01106197,2.52393154) :
index == 6 ? float3(1.62789534,1.51440942,1.68737967) :
index == 7 ? float3(1.80385018,1.70389195,2.05709176) :
index == 8 ? float3(1.62495236,1.69574948,1.91283004) :
index == 9 ? float3(1.69502717,1.7770826,1.90759815) :
index == 10 ? float3(1.80356828,1.68205223,1.97987949) :
index == 11 ? float3(1.66785366,1.63546163,1.8457941) :
index == 12 ? float3(1.74514905,1.63900857,1.92132176) :
index == 13 ? float3(1.58176716,1.6053882,2.12621365) :
index == 14 ? float3(1.70391168,2.04052837,2.6430896) :
index == 15 ? float3(2.13289067,2.25017952,2.86267049) :
index == 16 ? float3(2.51234767,2.80618459,2.81256359) :
index == 17 ? float3(2.9114228,2.80481682,2.26012674) :
index == 18 ? float3(2.73254353,3.57453967,2.85978638) :
float3(2.55721132,2.54587533,2.07654137);
}
float3 LookupPrintPivot(int index) {
return index == 0 ? float3(0.646758655,0.677122445,0.898988922) :
index == 1 ? float3(0.697827264,0.679515053,0.848063395) :
index == 2 ? float3(0.688213405,0.699853851,0.827264679) :
index == 3 ? float3(0.752647111,0.752786894,0.727624191) :
index == 4 ? float3(0.756658746,0.753472533,0.710793469) :
index == 5 ? float3(0.757299778,0.751165413,0.695469998) :
index == 6 ? float3(0.718836775,0.720866819,0.79092112) :
index == 7 ? float3(0.727260485,0.757480856,0.748075677) :
index == 8 ? float3(0.726795468,0.713182649,0.797102247) :
index == 9 ? float3(0.705278343,0.719230988,0.802760568) :
index == 10 ? float3(0.74959953,0.693288054,0.775394073) :
index == 11 ? float3(0.734474081,0.705641058,0.793072956) :
index == 12 ? float3(0.754674551,0.684739397,0.785211291) :
index == 13 ? float3(0.708424419,0.702591572,0.827693489) :
index == 14 ? float3(0.879799041,0.700462348,0.635738784) :
index == 15 ? float3(0.882493529,0.701244158,0.645962584) :
index == 16 ? float3(0.497542118,0.504094058,0.533758252) :
index == 17 ? float3(0.543809047,0.566321105,0.368652488) :
index == 18 ? float3(0.496131678,0.547561809,0.566407142) :
float3(0.537116444,0.518751838,0.45267563);
}
float3 LookupMC0(int index) {
return index == 0 ? float3(0.336,0.154,0.168) :
index == 1 ? float3(0.336,0.154,0.168) :
index == 2 ? float3(0.336,0.154,0.168) :
index == 3 ? float3(0.336,0.154,0.168) :
index == 4 ? float3(0.336,0.154,0.168) :
index == 5 ? float3(0.336,0.154,0.168) :
index == 6 ? float3(0.336,0.154,0.168) :
index == 7 ? float3(0.336,0.154,0.168) :
index == 8 ? float3(0.336,0.154,0.168) :
index == 9 ? float3(0.336,0.154,0.168) :
index == 10 ? float3(0.336,0.154,0.168) :
index == 11 ? float3(0.336,0.154,0.168) :
index == 12 ? float3(0.336,0.154,0.168) :
index == 13 ? float3(0.336,0.154,0.168) :
index == 14 ? float3(0.336,0.154,0.168) :
index == 15 ? float3(0.336,0.154,0.168) :
index == 16 ? float3(0.12,0.08,0.06) :
index == 17 ? float3(0.12,0.08,0.06) :
index == 18 ? float3(0.108,0.072,0.054) :
float3(0.156,0.104,0.078);
}
float3 LookupMC1(int index) {
return index == 0 ? float3(0.353,0.319,0.226) :
index == 1 ? float3(0.353,0.319,0.226) :
index == 2 ? float3(0.353,0.319,0.226) :
index == 3 ? float3(0.353,0.319,0.226) :
index == 4 ? float3(0.353,0.319,0.226) :
index == 5 ? float3(0.353,0.319,0.226) :
index == 6 ? float3(0.353,0.319,0.226) :
index == 7 ? float3(0.353,0.319,0.226) :
index == 8 ? float3(0.353,0.319,0.226) :
index == 9 ? float3(0.353,0.319,0.226) :
index == 10 ? float3(0.353,0.319,0.226) :
index == 11 ? float3(0.353,0.319,0.226) :
index == 12 ? float3(0.353,0.319,0.226) :
index == 13 ? float3(0.353,0.319,0.226) :
index == 14 ? float3(0.353,0.319,0.226) :
index == 15 ? float3(0.353,0.319,0.226) :
index == 16 ? float3(0.12,0.08,0.06) :
index == 17 ? float3(0.12,0.08,0.06) :
index == 18 ? float3(0.108,0.072,0.054) :
float3(0.156,0.104,0.078);
}
float3 LookupMC2(int index) {
return index == 0 ? float3(0.302,0.353,0.273) :
index == 1 ? float3(0.302,0.353,0.273) :
index == 2 ? float3(0.302,0.353,0.273) :
index == 3 ? float3(0.302,0.353,0.273) :
index == 4 ? float3(0.302,0.353,0.273) :
index == 5 ? float3(0.302,0.353,0.273) :
index == 6 ? float3(0.302,0.353,0.273) :
index == 7 ? float3(0.302,0.353,0.273) :
index == 8 ? float3(0.302,0.353,0.273) :
index == 9 ? float3(0.302,0.353,0.273) :
index == 10 ? float3(0.302,0.353,0.273) :
index == 11 ? float3(0.302,0.353,0.273) :
index == 12 ? float3(0.302,0.353,0.273) :
index == 13 ? float3(0.302,0.353,0.273) :
index == 14 ? float3(0.302,0.353,0.273) :
index == 15 ? float3(0.302,0.353,0.273) :
index == 16 ? float3(0.06,0.06,0.06) :
index == 17 ? float3(0.06,0.06,0.06) :
index == 18 ? float3(0.054,0.054,0.054) :
float3(0.078,0.078,0.078);
}
float3 LookupAmp0(int index) {
return index == 0 ? float3(0.595821901,0.564363183,0.683399042) :
index == 1 ? float3(0.522493081,0.537792082,0.600456525) :
index == 2 ? float3(0.596982859,0.562265196,0.655173521) :
index == 3 ? float3(0.591724974,0.560247839,0.606843608) :
index == 4 ? float3(0.719055738,0.631378094,0.681790753) :
index == 5 ? float3(0.792382287,0.660645338,0.741153147) :
index == 6 ? float3(0.518089124,0.480798896,0.551069118) :
index == 7 ? float3(0.564100536,0.543931589,0.619286504) :
index == 8 ? float3(0.524830685,0.525272238,0.588014084) :
index == 9 ? float3(0.546004143,0.567507915,0.623013146) :
index == 10 ? float3(0.598964253,0.547925518,0.574520263) :
index == 11 ? float3(0.53531215,0.515136696,0.587905698) :
index == 12 ? float3(0.561844002,0.523201372,0.628455074) :
index == 13 ? float3(0.495865423,0.510296456,0.672274065) :
index == 14 ? float3(0.533675889,0.664427428,0.84905624) :
index == 15 ? float3(0.652236874,0.729711132,0.933503355) :
index == 16 ? float3(0.892328214,1.01190533,1.01802953) :
index == 17 ? float3(1.02802788,0.998613334,0.807155349) :
index == 18 ? float3(0.93169304,1.2857852,1.01760202) :
float3(0.875364735,0.880337552,0.709931969);
}
float3 LookupAmp1(int index) {
return index == 0 ? float3(0.654520975,0.618462629,0.787502427) :
index == 1 ? float3(0.586567026,0.604999996,0.710122498) :
index == 2 ? float3(0.691070814,0.617549289,0.747402272) :
index == 3 ? float3(0.656052396,0.585507986,0.711608064) :
index == 4 ? float3(0.788930028,0.665609852,0.802161797) :
index == 5 ? float3(0.870989484,0.669111523,0.914489561) :
index == 6 ? float3(0.555416469,0.517659023,0.566743735) :
index == 7 ? float3(0.624608741,0.58387271,0.712260343) :
index == 8 ? float3(0.551768942,0.591190475,0.669249616) :
index == 9 ? float3(0.575111292,0.605288225,0.642027005) :
index == 10 ? float3(0.584839593,0.560774864,0.743866236) :
index == 11 ? float3(0.566433548,0.56215427,0.62996093) :
index == 12 ? float3(0.592239245,0.558618766,0.646568439) :
index == 13 ? float3(0.547811896,0.549688251,0.725213201) :
index == 14 ? float3(0.584902301,0.687755917,0.902644579) :
index == 15 ? float3(0.743241023,0.760329572,0.968251311) :
index == 16 ? float3(0.892330136,1.01190997,1.01803189) :
index == 17 ? float3(1.0296783,1.00329926,0.808654005) :
index == 18 ? float3(0.941651647,1.29035099,1.03140315) :
float3(0.883330062,0.883135097,0.707829032);
}
float3 LookupAmp2(int index) {
return index == 0 ? float3(0.639470597,0.597255611,0.798150101) :
index == 1 ? float3(0.560910304,0.600969609,0.713316128) :
index == 2 ? float3(0.70267748,0.618053875,0.759878757) :
index == 3 ? float3(0.649926868,0.584812608,0.705952382) :
index == 4 ? float3(0.788484951,0.661723247,0.771853137) :
index == 5 ? float3(0.855046116,0.680150432,0.867896111) :
index == 6 ? float3(0.553395492,0.515162749,0.568355395) :
index == 7 ? float3(0.614086958,0.575200215,0.724347392) :
index == 8 ? float3(0.547343638,0.578407375,0.654371343) :
index == 9 ? float3(0.57376437,0.603660202,0.642567614) :
index == 10 ? float3(0.618726344,0.572409675,0.660307432) :
index == 11 ? float3(0.565275193,0.557363073,0.626926481) :
index == 12 ? float3(0.59105639,0.556758047,0.646274714) :
index == 13 ? float3(0.537108585,0.544524911,0.727395266) :
index == 14 ? float3(0.584831409,0.687272914,0.891012571) :
index == 15 ? float3(0.736944928,0.758904098,0.960539507) :
index == 16 ? float3(0.725617883,0.780584456,0.775250354) :
index == 17 ? float3(0.851646367,0.801103469,0.643066014) :
index == 18 ? float3(0.857109431,0.996596984,0.80944436) :
float3(0.796451918,0.780599798,0.657523299);
}
bool LookupPositive(int index) {
return index == 0 ? false :
index == 1 ? false :
index == 2 ? false :
index == 3 ? false :
index == 4 ? false :
index == 5 ? false :
index == 6 ? false :
index == 7 ? false :
index == 8 ? false :
index == 9 ? false :
index == 10 ? false :
index == 11 ? false :
index == 12 ? false :
index == 13 ? false :
index == 14 ? false :
index == 15 ? false :
index == 16 ? true :
index == 17 ? true :
index == 18 ? true :
true;
}
// Optical PSF weights fitted to Andrea Volpato/spektrafilm. GPL-3.0.
float LookupOpticalSigma(int index) {
return index == 0 ? 4 :
index == 1 ? 9.09539315 :
index == 2 ? 20.6815441 :
index == 3 ? 47.0266938 :
index == 4 ? 106.931567 :
index == 5 ? 243.146161 :
index == 6 ? 552.877481 :
index == 7 ? 1257.15951 :
index == 8 ? 2858.59001 :
6500;
}
float3 LookupOpticalWeight0(int index) {
return index == 0 ? float3(0.0479632908,0.0479632908,0.0479632908) :
index == 1 ? float3(0.0071886649,0.00692370587,0.00653268155) :
index == 2 ? float3(0.0074658969,0.00752589173,0.00760936278) :
float3(0.00225001961,0.00238676797,0.00258440853);
}
float3 LookupOpticalWeight1(int index) {
return index == 0 ? float3(0.221598847,0.221598847,0.221598847) :
index == 1 ? float3(0.06770896,0.0694702904,0.0720085176) :
index == 2 ? float3(0.0629215612,0.0627919142,0.0626115358) :
float3(0.0208385069,0.0203627658,0.0196701872);
}
float3 LookupOpticalWeight2(int index) {
return index == 0 ? float3(0.312835405,0.312835405,0.312835405) :
index == 1 ? float3(0.1972284,0.199899894,0.203409129) :
index == 2 ? float3(0.140479424,0.141767628,0.143559912) :
float3(0.0940452553,0.095764679,0.0982108066);
}
float3 LookupOpticalWeight3(int index) {
return index == 0 ? float3(0.170416113,0.170416113,0.170416113) :
index == 1 ? float3(0.151240228,0.201894039,0.272806219) :
index == 2 ? float3(0.0858509335,0.0935791761,0.104331511) :
float3(0.0919553218,0.0946507047,0.0980841158);
}
float3 LookupOpticalWeight4(int index) {
return index == 0 ? float3(0.133547268,0.133547268,0.133547268) :
index == 1 ? float3(0.141899959,0.195389772,0.268930901) :
index == 2 ? float3(0.07592152,0.117520308,0.175396868) :
float3(0.0270810077,0.0703599524,0.129322201);
}
float3 LookupOpticalWeight5(int index) {
return index == 0 ? float3(0.0940759549,0.0940759549,0.0940759549) :
index == 1 ? float3(0.3119208,0.234688446,0.128914848) :
index == 2 ? float3(0.23767612,0.233034499,0.226576595) :
float3(0.101636297,0.134541773,0.174150558);
}
float3 LookupOpticalWeight6(int index) {
return index == 0 ? float3(0.0132761156,0.0132761156,0.0132761156) :
index == 1 ? float3(0.120029758,0.0867087813,0.037657358) :
index == 2 ? float3(0.284283037,0.240409047,0.17936699) :
float3(0.318417819,0.257094192,0.176095061);
}
float3 LookupOpticalWeight7(int index) {
return index == 0 ? float3(0.0062870049,0.0062870049,0.0062870049) :
index == 1 ? float3(0,0.0024183823,0.00851364004) :
index == 2 ? float3(0.0784247385,0.0765064708,0.0738375772) :
float3(0.219702444,0.198528245,0.173038461);
}
float3 LookupOpticalWeight8(int index) {
return index == 0 ? float3(0,0,0) :
index == 1 ? float3(0.00278323001,0.00260669041,0.00122670505) :
index == 2 ? float3(0.025843015,0.0256588684,0.0254026644) :
float3(0.0966639139,0.0995376107,0.102777755);
}
float3 LookupOpticalWeight9(int index) {
return index == 0 ? float3(0,0,0) :
index == 1 ? float3(0,0,0) :
index == 2 ? float3(0.0011337547,0.00120619637,0.00130698475) :
float3(0.0274094147,0.0267733095,0.0260664455);
}
float LookupOpticalGain(int index) {
return index == 0 ? .65 :
index == 1 ? .75 :
index == 2 ? 1.05 :
1.0;
}
// Lensfun calibration data, CC BY-SA 3.0. See LENS-NOTICES.txt and lens-profiles.json.
float LookupLensCropFactors(int index) {
return index == 0 ? 1.613 :
index == 1 ? 1 :
index == 2 ? 1 :
1;
}
float LookupLensRadiiMM(int index) {
return index == 0 ? 13.411846034 :
index == 1 ? 21.6333076528 :
index == 2 ? 21.6333076528 :
21.6333076528;
}
float3 LookupLensDistortionABC(int index) {
return index == 0 ? float3(0,-2.68011024937e-05,0) :
index == 1 ? float3(6.2294865808e-06,-0.000203437754675,0.00134343603387) :
index == 2 ? float3(-5.64790976921e-07,-1.60546480753e-05,0) :
float3(-7.1237914475e-07,2.92757542202e-05,-0.000730608244538);
}
float3 LookupLensTCAR(int index) {
return index == 0 ? float3(1.0000033,0,0) :
index == 1 ? float3(1.0003216,0,-7.00694444444e-07) :
index == 2 ? float3(1.0001408,0,-1.99305555556e-07) :
float3(1.0003482,0,-2.19444444444e-07);
}
float3 LookupLensTCAB(int index) {
return index == 0 ? float3(0.9999942,0,0) :
index == 1 ? float3(0.9997719,0,9.90277777778e-07) :
index == 2 ? float3(0.9998642,0,1.26388888889e-07) :
float3(0.9998855,0,2.07638888889e-07);
}
float3 LookupLensVignetteCoefficients(int index) {
return index == 0 ? float3(-0.8917,0.6906,-0.2492) :
index == 1 ? float3(-0.103,-0.0537,0.0306) :
index == 2 ? float3(-0.0827,-0.0989,0.0752) :
index == 3 ? float3(-1.57759397853,1.38079201257,-0.531096535951) :
index == 4 ? float3(-0.397703431657,-0.286691226242,0.164696491532) :
index == 5 ? float3(-0.509197842627,0.0992947012615,0.0131030488387) :
index == 6 ? float3(-1.4465,1.4135,-0.6464) :
index == 7 ? float3(0.00110743620198,-0.868111997739,0.441842481851) :
index == 8 ? float3(0.0314065264991,-0.190127119203,-0.125301601469) :
index == 9 ? float3(-1.36232036148,1.36870332128,-0.63545408983) :
index == 10 ? float3(0.0947557343977,-0.978856612854,0.488557822039) :
float3(-0.112813410605,0.145730813821,-0.215156854927);
}
// Generated by bake_lens_effects.py. Design provenance: LENS-EFFECTS-NOTICES.txt.
float3 LookupLensFNumbers(int index) {
return index == 0 ? float3(1.8,2.8,4) :
index == 1 ? float3(2.8,4,5.6) :
index == 2 ? float3(1.8,2.8,4) :
float3(2.8,4,5.6);
}
float LookupLensEffectFocal(int index) {
return index == 0 ? 50.520361337010705 :
index == 1 ? 39.53853478898897 :
index == 2 ? 83.87447467479473 :
100.03337780917897;
}
int LookupLensBladeCounts(int index) {
return index == 0 ? 5 :
index == 1 ? 7 :
index == 2 ? 8 :
8;
}
float3 LookupGhostTint(int index) {
return index == 0 ? float3(0.605945288,0.228416839,0.0970184912) :
index == 1 ? float3(0.307516838,0.0660794946,0.0262663219) :
index == 2 ? float3(0.134569749,0.0348091966,0.228594351) :
index == 3 ? float3(0.381297694,0.104210727,0.0285233752) :
index == 4 ? float3(0.176256738,0.0519800908,0.275048776) :
index == 5 ? float3(0.191852464,0.0459907914,0.0156227751) :
index == 6 ? float3(0.472692239,0.234552574,0.113419728) :
index == 7 ? float3(0.165777118,0.0188584511,0.281436731) :
index == 8 ? float3(0.152860248,0.0110059771,0.0588932889) :
index == 9 ? float3(0.233986688,0.0519105646,0.00409320791) :
index == 10 ? float3(0.52826835,0.168696687,0.00981053637) :
index == 11 ? float3(0.279738893,0.139899054,0.0740996636) :
index == 12 ? float3(0.257533982,0.0593425874,0.0382684508) :
index == 13 ? float3(0.276405043,0.0744191779,0.0695722418) :
index == 14 ? float3(0.210614398,0.0198414517,0.0339567398) :
index == 15 ? float3(0.463440599,0.136007947,0.0297283618) :
index == 16 ? float3(0.515576553,0.107283308,0.00262244187) :
index == 17 ? float3(0.581440673,0.120988587,0.00295745483) :
index == 18 ? float3(0.110738356,0.00981330904,0.0628116514) :
index == 19 ? float3(0.199225872,0.0238393823,0.0245947053) :
index == 20 ? float3(0.698947503,0.437001028,0.306081622) :
index == 21 ? float3(0.179469938,0.0201872427,0.0659343252) :
index == 22 ? float3(0.216230937,0.0688785074,0.00549794354) :
float3(0.227036869,0.0399120989,0.303798709);
}
float4 LookupGhostGeometry(int index) {
return index == 0 ? float4(1.15328973,0.68838266,1.06490094,0.554054054) :
index == 1 ? float4(1.15328973,0.484162878,0.526783718,0.440540541) :
index == 2 ? float4(1.15328973,0.338914015,0.258124022,0.22972973) :
index == 3 ? float4(1.24083279,0.443546541,1,0.710810811) :
index == 4 ? float4(1.24083279,0.289831548,0.426985294,0.648648649) :
index == 5 ? float4(1.24083279,0.202882083,0.209222794,0.5) :
index == 6 ? float4(-0.898901433,1.63529405,0.875166874,0.737837838) :
index == 7 ? float4(-0.898901433,1.10302325,0.39816996,0.618918919) :
index == 8 ? float4(-0.898901433,0.772116277,0.19510328,0.462162162) :
index == 9 ? float4(-1.09573641,2.35715021,1,0.681081081) :
index == 10 ? float4(-1.09573641,1.54025887,0.426985294,0.648648649) :
index == 11 ? float4(-1.09573641,1.07818121,0.209222794,0.5) :
index == 12 ? float4(-1.31970591,2.36484905,1,0.710810811) :
index == 13 ? float4(-1.31970591,1.54528961,0.426985294,0.648648649) :
index == 14 ? float4(-1.31970591,1.08170273,0.209222794,0.5) :
index == 15 ? float4(-0.689267047,1.94616683,0.576756317,0.705405405) :
index == 16 ? float4(-0.689267047,1.32076958,0.26563564,0.524324324) :
index == 17 ? float4(-0.689267047,0.924538704,0.130161463,0.32972973) :
index == 18 ? float4(-1.15729305,1.86740342,1,0.737837838) :
index == 19 ? float4(-1.15729305,1.53671918,0.677193413,0.802702703) :
index == 20 ? float4(-1.15729305,1.09765656,0.345506843,0.727027027) :
index == 21 ? float4(-1.41470192,1.29663606,1,0.732432432) :
index == 22 ? float4(-1.41470192,1.06702466,0.677193413,0.8) :
index == 23 ? float4(-1.41470192,0.762160473,0.345506843,0.727027027) :
index == 24 ? float4(1.24508696,2.45693074,1,0.732432432) :
index == 25 ? float4(1.24508696,2.0218516,0.677193413,0.8) :
index == 26 ? float4(1.24508696,1.44417972,0.345506843,0.727027027) :
index == 27 ? float4(0.533615824,4.94295797,0.71896472,0.689189189) :
index == 28 ? float4(0.533615824,4.39337212,0.567975659,0.583783784) :
index == 29 ? float4(0.533615824,3.13812294,0.289783499,0.424324324) :
index == 30 ? float4(-0.963446591,14.555762,1,0.732432432) :
index == 31 ? float4(-0.963446591,11.9781931,0.677193413,0.8) :
index == 32 ? float4(-0.963446591,8.55585218,0.345506843,0.540540541) :
index == 33 ? float4(0.281205744,13.9003147,0.592222483,0.845945946) :
index == 34 ? float4(0.281205744,13.9003147,0.592222483,0.835135135) :
index == 35 ? float4(0.281205744,11.4529211,0.402038985,0.667567568) :
index == 36 ? float4(-0.831097962,1.2527708,0.644825204,0.416216216) :
index == 37 ? float4(-0.831097962,0.864238843,0.306878403,0.440540541) :
index == 38 ? float4(-0.831097962,0.60496719,0.150370418,0.272972973) :
index == 39 ? float4(0.999598874,1.71503351,1,0.548648649) :
index == 40 ? float4(0.999598874,1.24575825,0.527621303,0.624324324) :
index == 41 ? float4(0.999598874,0.872030773,0.258534439,0.594594595) :
index == 42 ? float4(2.54763296,1.30304105,1,0) :
index == 43 ? float4(2.54763296,0.916415458,0.494616516,0) :
index == 44 ? float4(2.54763296,0.641490821,0.242362093,0) :
index == 45 ? float4(1.05498049,3.91705875,0.993306338,0.437837838) :
index == 46 ? float4(1.05498049,2.6787371,0.46454011,0.5) :
index == 47 ? float4(1.05498049,1.87511597,0.227624654,0.508108108) :
index == 48 ? float4(2.85250251,9.63875852,0.886722544,0) :
index == 49 ? float4(2.85250251,7.1988236,0.494616516,0) :
index == 50 ? float4(2.85250251,5.03917652,0.242362093,0) :
index == 51 ? float4(1.96127496,11.4540144,1,0.140540541) :
index == 52 ? float4(1.96127496,8.0554913,0.494616516,0.0594594595) :
index == 53 ? float4(1.96127496,5.63884391,0.242362093,0) :
index == 54 ? float4(0.94582906,0.741470312,0.915762827,0.621621622) :
index == 55 ? float4(0.94582906,0.537587357,0.481386127,0.632432432) :
index == 56 ? float4(0.94582906,0.383990969,0.245605167,0.5) :
index == 57 ? float4(1.08419778,1.13175617,1.07365613,0.537837838) :
index == 58 ? float4(1.08419778,0.831959202,0.580181035,0.578378378) :
index == 59 ? float4(1.08419778,0.594256573,0.296010732,0.413513514) :
index == 60 ? float4(-3.30191131,6.95722405,1,0) :
index == 61 ? float4(-3.30191131,5.01997951,0.520633261,0) :
index == 62 ? float4(-3.30191131,3.58569965,0.265629215,0) :
index == 63 ? float4(1.27927731,1.51570536,1,0.594594595) :
index == 64 ? float4(1.27927731,1.093656,0.520633261,0.618918919) :
index == 65 ? float4(1.27927731,0.781182858,0.265629215,0.554054054) :
index == 66 ? float4(-0.566926989,1.72826985,0.387075816,0.532432432) :
index == 67 ? float4(-0.566926989,1.26113925,0.206109975,0.4) :
index == 68 ? float4(-0.566926989,0.900813748,0.105158151,0.197297297) :
index == 69 ? float4(2.17113914,3.53264724,1,0) :
index == 70 ? float4(2.17113914,2.54897882,0.520633261,0) :
float4(2.17113914,1.82069916,0.265629215,0);
}
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


bool PreviewingPreGrade()
{
    return PreviewPreGrade;
}
bool RunsFilmPipeline()
{
    return Strength > 0 && !PreviewingPreGrade();
}
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
    {
const int y = 0;
        {
const int x = 0;
            float2 q = uv + (float2(x, y) - .5) / 128.0;
            float r2 = dot((q - .5) * 2, (q - .5) * 2);
            float w =
                AutoMetering == 0 ? 1 : (AutoMetering == 1 ? .15 + .85 * exp2(-4 * r2) : exp2(-32 * r2));
            float lum = dot(max(GradeInput(SceneLinear(q)), 0), float3(.2126, .7152, .0722));
            sumLog += log2(clamp(lum, 1e-5, 65504.0)) * w;
            sumWeight += w;
        }
{
const int x = 1;
            float2 q = uv + (float2(x, y) - .5) / 128.0;
            float r2 = dot((q - .5) * 2, (q - .5) * 2);
            float w =
                AutoMetering == 0 ? 1 : (AutoMetering == 1 ? .15 + .85 * exp2(-4 * r2) : exp2(-32 * r2));
            float lum = dot(max(GradeInput(SceneLinear(q)), 0), float3(.2126, .7152, .0722));
            sumLog += log2(clamp(lum, 1e-5, 65504.0)) * w;
            sumWeight += w;
        }
    }
{
const int y = 1;
        {
const int x = 0;
            float2 q = uv + (float2(x, y) - .5) / 128.0;
            float r2 = dot((q - .5) * 2, (q - .5) * 2);
            float w =
                AutoMetering == 0 ? 1 : (AutoMetering == 1 ? .15 + .85 * exp2(-4 * r2) : exp2(-32 * r2));
            float lum = dot(max(GradeInput(SceneLinear(q)), 0), float3(.2126, .7152, .0722));
            sumLog += log2(clamp(lum, 1e-5, 65504.0)) * w;
            sumWeight += w;
        }
{
const int x = 1;
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
int LensIndex()
{
    return clamp(LensModel - 1, 0, 3);
}
bool FlareActive()
{
    return FlareStrength > 0 && (FlareGhosts > 0 || FlareHalo > 0);
}
bool LensActive()
{
    return LensModel > 0 &&
           (LensSoftness > 0 || LensDistortion > 0 || LensVignette > 0 || LensCA > 0);
}
float2 LensSensorSize()
{
    float aspect = BUFFER_WIDTH * 1.0 / BUFFER_HEIGHT;
    return aspect >= 1.5 ? float2(36, 36 / aspect) / LookupLensCropFactors(LensIndex())
                         : float2(24 * aspect, 24) / LookupLensCropFactors(LensIndex());
}
// Lensfun reverse poly3, with its focal-length-preserving coefficient normalization.
float LensInverseScale(float radius)
{
    float3 abc = LookupLensDistortionABC(LensIndex()) * LensDistortion;
    float ru = radius;
    {
const int i = 0;
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
{
const int i = 1;
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
{
const int i = 2;
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
{
const int i = 3;
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
{
const int i = 4;
        float r2 = ru * ru, r3 = r2 * ru;
        ru -= (ru + abc.z * r2 + abc.y * r3 + abc.x * r3 * ru - radius) /
              (1 + 2 * abc.z * ru + 3 * abc.y * r2 + 4 * abc.x * r3);
    }
    return radius > 1e-6 ? ru / radius : 1;
}
float LensColourScale(float radius, int channel)
{
    if (channel == 1 || LensCA <= 0)
        return 1;
    float3 terms = channel == 0 ? LookupLensTCAR(LensIndex()) : LookupLensTCAB(LensIndex());
    terms = float3(1, 0, 0) + (terms - float3(1, 0, 0)) * LensCA;
    float ru = radius;
    {
const int i = 0;
        ru -= (ru * (terms.x + terms.y * ru + terms.z * ru * ru) - radius) /
              (terms.x + 2 * terms.y * ru + 3 * terms.z * ru * ru);
    }
{
const int i = 1;
        ru -= (ru * (terms.x + terms.y * ru + terms.z * ru * ru) - radius) /
              (terms.x + 2 * terms.y * ru + 3 * terms.z * ru * ru);
    }
{
const int i = 2;
        ru -= (ru * (terms.x + terms.y * ru + terms.z * ru * ru) - radius) /
              (terms.x + 2 * terms.y * ru + 3 * terms.z * ru * ru);
    }
{
const int i = 3;
        ru -= (ru * (terms.x + terms.y * ru + terms.z * ru * ru) - radius) /
              (terms.x + 2 * terms.y * ru + 3 * terms.z * ru * ru);
    }
    return radius > 1e-6 ? ru / radius : 1;
}
float2 LensSourceUV(float2 p, int channel, float2 sensor, float zoom)
{
    p *= LensColourScale(length(p), channel);
    p *= LensInverseScale(length(p));
    return .5 + p / (sensor * zoom);
}
// Decode individual texels before interpolation, including clamped border samples.
float3 SampleLinearBackBuffer(float2 uv)
{
    float2 size = float2(BUFFER_WIDTH, BUFFER_HEIGHT);
    float2 p = uv * size - .5, cell = floor(p), f = frac(p);
    float2 q = (cell + .5) / size, stepUV = 1 / size;
    float3 a = Decode(tex2Dlod(ReShade::BackBuffer, float4(q, 0, 0)).rgb);
    float3 b = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + float2(stepUV.x, 0), 0, 0)).rgb);
    float3 c = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + float2(0, stepUV.y), 0, 0)).rgb);
    float3 d = Decode(tex2Dlod(ReShade::BackBuffer, float4(q + stepUV, 0, 0)).rgb);
    return lerp(lerp(a, b, f.x), lerp(c, d, f.x), f.y);
}
// Auto-crop depends only on the lens settings and viewport, not the pixel.
float LensCropScale()
{
    float2 sensor = LensSensorSize();
    float zoom = 1;
    if (LensAutoCrop && (LensDistortion > 0 || LensCA > 0))
    {
        float corner = length(sensor * .5);
        {
const int channel = 0;
            float colour = LensColourScale(corner, channel);
            zoom = max(zoom, colour * LensInverseScale(corner * colour));
        }
{
const int channel = 1;
            float colour = LensColourScale(corner, channel);
            zoom = max(zoom, colour * LensInverseScale(corner * colour));
        }
{
const int channel = 2;
            float colour = LensColourScale(corner, channel);
            zoom = max(zoom, colour * LensInverseScale(corner * colour));
        }
    }
    return zoom;
}
float4 LensCapturePS(float4 pos : SV_Position, float2 uv : TEXCOORD, nointerpolation float zoom : TEXCOORD1)
    : SV_Target
{
    if (!LensActive())
        return 0;
    float2 sensor = LensSensorSize(), p = (uv - .5) * sensor;
    float3 linearRGB;
    [branch] if (LensDistortion <= 0 && LensCA <= 0)
    {
        linearRGB = SceneLinear(uv);
    }
    else if (LensCA <= 0) linearRGB = SampleLinearBackBuffer(LensSourceUV(p, 1, sensor, zoom));
    else
    {
        linearRGB.r = SampleLinearBackBuffer(LensSourceUV(p, 0, sensor, zoom)).r;
        linearRGB.g = SampleLinearBackBuffer(LensSourceUV(p, 1, sensor, zoom)).g;
        linearRGB.b = SampleLinearBackBuffer(LensSourceUV(p, 2, sensor, zoom)).b;
    }
    float r2 = dot(p, p) / (LookupLensRadiiMM(LensIndex()) * LookupLensRadiiMM(LensIndex()));
    float3 coefficients = LookupLensVignetteCoefficients(LensIndex() * 3 + clamp(LensAperture, 0, 2));
    float transmission = max(.001, 1 + dot(coefficients, float3(r2, r2 * r2, r2 * r2 * r2)));
    return float4(linearRGB * lerp(1, transmission, LensVignette), 1);
}
// PSF atlas: four lenses, three apertures, three channels, 17 field positions.
// Upper half: offsets; lower half: variances. Each component uses two bytes.
static const int LensFieldCount = 17;
static const int LensRowsPerProfile = 3 * 3 * LensFieldCount;
static const float2 LensAtlasSize = float2(48, 1224);
float3 LensTap(float tap, float field, int channel)
{
    float y = (LensIndex() * LensRowsPerProfile + (clamp(LensAperture, 0, 2) * 3 + channel) * LensFieldCount +
               field * (LensFieldCount - 1) + .5) /
              LensAtlasSize.y;
    float4 data = tex2Dlod(LensPSFS, float4((tap + .5) / LensAtlasSize.x, y, 0, 0));
    float4 variance = tex2Dlod(LensPSFS, float4((tap + .5) / LensAtlasSize.x, y + .5, 0, 0));
    return float3((float2(data.r * 256 + data.g, data.b * 256 + data.a) / 257 - .5) * .5,
                  (variance.r * 256 + variance.g) / 257 * .25);
}
float LensLOD(float sigmaMM, float2 sensor)
{
    float sigma = sigmaMM * LensSoftness * BUFFER_WIDTH / sensor.x;
    float variance = sigma * sigma;
    float level = floor(.5 * log2(1 + 12 * variance));
    float power = exp2(2 * level);
    float fraction = (12 * variance + 1 - power) / (3 * power);
    return clamp(level + fraction, 0, SPEKTRA_LENS_MIPS - 1);
}
float3 LensSample(float2 uv)
{
    float3 result = tex2Dlod(LensInputS, float4(uv, 0, 0)).rgb;
    [branch] if (LensSoftness > 0)
    {
        float2 sensor = LensSensorSize(), p = (uv - .5) * sensor;
        float radius = length(p);
        float2 radial = radius > 1e-6 ? p / radius : float2(1, 0), tangent = float2(-radial.y, radial.x);
        float field = saturate(radius / LookupLensRadiiMM(LensIndex()));
        int count = LensQuality == 0 ? 16 : 32;
        float start = LensQuality == 0 ? 0 : 16;
        float3 sum = 0;
        {
const int i = 0;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 1;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 2;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 3;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 4;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 5;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 6;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 7;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 8;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 9;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 10;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 11;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 12;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 13;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 14;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 15;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 16;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 17;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 18;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 19;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 20;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 21;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 22;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 23;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 24;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 25;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 26;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 27;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 28;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 29;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 30;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
{
const int i = 31;
            if (i < count)
            {
                float3 r = LensTap(start + i, field, 0), g = LensTap(start + i, field, 1),
                       b = LensTap(start + i, field, 2);
                float2 ru = uv - (radial * r.x + tangent * r.y) * LensSoftness / sensor;
                float2 gu = uv - (radial * g.x + tangent * g.y) * LensSoftness / sensor;
                float2 bu = uv - (radial * b.x + tangent * b.y) * LensSoftness / sensor;
                sum.r += tex2Dlod(LensInputS, float4(ru, 0, LensLOD(r.z, sensor))).r;
                sum.g += tex2Dlod(LensInputS, float4(gu, 0, LensLOD(g.z, sensor))).g;
                sum.b += tex2Dlod(LensInputS, float4(bu, 0, LensLOD(b.z, sensor))).b;
            }
        }
        result = sum / count;
    }
    return result;
}
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
    {
const int y = 0;
        {
const int x = 0;
            sum += max(VeilSource(uv + (float2(x, y) - .5) * pixel), 0);
        }
{
const int x = 1;
            sum += max(VeilSource(uv + (float2(x, y) - .5) * pixel), 0);
        }
    }
{
const int y = 1;
        {
const int x = 0;
            sum += max(VeilSource(uv + (float2(x, y) - .5) * pixel), 0);
        }
{
const int x = 1;
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
    {
const int y = -1;
        {
const int x = -1;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 0;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 1;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
    }
{
const int y = 0;
        {
const int x = -1;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 0;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 1;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
    }
{
const int y = 1;
        {
const int x = -1;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 0;
            sum += tex2Dlod(source, float4(uv + float2(x, y) * pixel, 0, 0)).rgb *
                   ((x == 0 ? 2.0 : 1.0) * (y == 0 ? 2.0 : 1.0));
        }
{
const int x = 1;
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
    return sensor / LookupLensCropFactors(LensEffectsIndex());
}
int EffectsBlades()
{
    return DiffractionBlades > 0 ? clamp(DiffractionBlades + 4, 5, 9) : LookupLensBladeCounts(LensEffectsIndex());
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
    {
const int y = 0;
        {
const int x = 0;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 1;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 2;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 3;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
    }
{
const int y = 1;
        {
const int x = 0;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 1;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 2;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 3;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
    }
{
const int y = 2;
        {
const int x = 0;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 1;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 2;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 3;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
    }
{
const int y = 3;
        {
const int x = 0;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 1;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 2;
            sum += HighlightSource(uv + (float2(x, y) - 1.5) * ReShade::PixelSize);
        }
{
const int x = 3;
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
    float fnumber = LookupLensFNumbers(LensEffectsIndex())[aperture];
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
    {
const int axis = 0;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 1;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 2;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 3;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 4;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 5;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 6;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 7;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 8;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 9;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 10;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 11;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 12;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
{
const int axis = 13;
        if (axis < axes)
        {
            float angle = axis * 3.14159265 / axes + radians(DiffractionRotation);
            float2 direction = float2(cos(angle), sin(angle)) / sensor;
            {
const int i = 0;
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
{
const int i = 1;
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
{
const int i = 2;
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
{
const int i = 3;
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
{
const int i = 4;
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
{
const int i = 5;
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
{
const int i = 6;
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
{
const int i = 7;
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
{
const int i = 8;
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
{
const int i = 9;
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
{
const int i = 10;
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
{
const int i = 11;
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
{
const int i = 12;
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
{
const int i = 13;
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
{
const int i = 14;
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
{
const int i = 15;
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
    {
const int ghost = 0;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
{
const int ghost = 1;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
{
const int ghost = 2;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
{
const int ghost = 3;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
{
const int ghost = 4;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
            sum += reflected * (tint * throughput / (16 * scale * scale));
        }
    }
{
const int ghost = 5;
        int index = profile * 6 + ghost;
        float4 geometry = LookupGhostGeometry(index * 3 + aperture);
        float scale = geometry.x, radius = geometry.y;
        float3 reflected = 0;
        float lod = HighlightLOD(.85 * radius / abs(scale) * BUFFER_WIDTH / (sensor.x * 4));
        float2 center = .5 + (uv - .5) / scale;
        float2 support =
            radius / (abs(scale) * sensor) + 3 * exp2(lod) * float2(4.0 / BUFFER_WIDTH, 4.0 / BUFFER_HEIGHT);
        [branch] if (!HighlightRegionEmpty(center, support))
        {
            {
const int i = 0;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 1;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 2;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 3;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 4;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 5;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 6;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 7;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 8;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 9;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 10;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 11;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 12;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 13;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 14;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
{
const int i = 15;
                float angle = i * 2.39996323;
                float sector =
                    frac(angle * blades / 6.2831853 + .5) * 6.2831853 / blades - 3.14159265 / blades;
                float edge = lerp(cos(3.14159265 / blades) / cos(sector), 1, roundness);
                angle += radians(DiffractionRotation);
                float2 pupil = float2(cos(angle), sin(angle)) * sqrt((i + .5) / 16) * edge * radius / sensor;
                float2 q = .5 + (uv - .5 - pupil) / scale;
                float field = saturate(length((q - .5) * sensor) / (.2 * LookupLensEffectFocal(profile)));
                float visibility = lerp(1, geometry.w, field * field);
                reflected += ReadHighlight(q, lod) * visibility;
            }
            float3 tint = LookupGhostTint(index);
            tint = lerp(dot(tint, float3(.2126, .7152, .0722)).xxx, tint, CoatingColour);
            float throughput = geometry.z / max(LookupGhostGeometry(index * 3).z, 1e-6);
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
    {
const int y = 0;
        {
const int x = 0;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 1;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 2;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 3;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
    }
{
const int y = 1;
        {
const int x = 0;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 1;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 2;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 3;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
    }
{
const int y = 2;
        {
const int x = 0;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 1;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 2;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 3;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
    }
{
const int y = 3;
        {
const int x = 0;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 1;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 2;
            float2 q = uv + float2(x - 1.5, y - 1.5) * ReShade::PixelSize;
            float3 c = LensActive() ? tex2Dlod(OptH0S, float4(q, 0, 0)).rgb : SceneLinear(q);
            float lum = dot(c, float3(.2126, .7152, .0722));
            sum += c * (max(lum - FlareThreshold, 0) / max(lum, 1e-5));
        }
{
const int x = 3;
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
        {
const int i = 0;
            float2 q = flipped + vec * i;
            float2 axis = q - .5;
            axis /= max(length(axis), 1e-5);
            float2 fringe = axis * float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 1) * .002;
            float3 c = float3(FlareRead(q + fringe).r, FlareRead(q).g, FlareRead(q - fringe).b);
            float3 tint = lerp(float3(.65, .85, 1), float3(1, .75, .5), i / 4.0);
            flare += c * tint * (FlareGhosts / 5);
        }
{
const int i = 1;
            float2 q = flipped + vec * i;
            float2 axis = q - .5;
            axis /= max(length(axis), 1e-5);
            float2 fringe = axis * float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 1) * .002;
            float3 c = float3(FlareRead(q + fringe).r, FlareRead(q).g, FlareRead(q - fringe).b);
            float3 tint = lerp(float3(.65, .85, 1), float3(1, .75, .5), i / 4.0);
            flare += c * tint * (FlareGhosts / 5);
        }
{
const int i = 2;
            float2 q = flipped + vec * i;
            float2 axis = q - .5;
            axis /= max(length(axis), 1e-5);
            float2 fringe = axis * float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 1) * .002;
            float3 c = float3(FlareRead(q + fringe).r, FlareRead(q).g, FlareRead(q - fringe).b);
            float3 tint = lerp(float3(.65, .85, 1), float3(1, .75, .5), i / 4.0);
            flare += c * tint * (FlareGhosts / 5);
        }
{
const int i = 3;
            float2 q = flipped + vec * i;
            float2 axis = q - .5;
            axis /= max(length(axis), 1e-5);
            float2 fringe = axis * float2(BUFFER_HEIGHT / (float)BUFFER_WIDTH, 1) * .002;
            float3 c = float3(FlareRead(q + fringe).r, FlareRead(q).g, FlareRead(q - fringe).b);
            float3 tint = lerp(float3(.65, .85, 1), float3(1, .75, .5), i / 4.0);
            flare += c * tint * (FlareGhosts / 5);
        }
{
const int i = 4;
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
    {
const int i = -4;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -3;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -2;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -1;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 0;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 1;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 2;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 3;
        float w = exp(-.125 * i * i);
        sum += tex2Dlod(src, float4(uv + axis * (i * .0025), 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 4;
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
// Cube slices run horizontally; stocks occupy 33-row strips.
static const float FilmCubeSize = 33;
static const float2 FilmAtlasSize = float2(1089, 1320);
// Read16 combines high/low bytes stored in the two atlas halves.
float3 Read16(sampler2D s, float2 uv)
{
    return (tex2Dlod(s, float4(uv, 0, 0)).rgb * 256 + tex2Dlod(s, float4(uv + float2(0, .5), 0, 0)).rgb) /
           257;
}
float3 Cube(sampler2D s, float3 c)
{
    float3 p = saturate(c) * (FilmCubeSize - 1);
    float z = floor(p.z);
    float zn = min(z + 1, FilmCubeSize - 1);
    float2 a = float2(z * FilmCubeSize + p.x + .5, Stock * FilmCubeSize + p.y + .5) / FilmAtlasSize;
    float2 b = float2(zn * FilmCubeSize + p.x + .5, Stock * FilmCubeSize + p.y + .5) / FilmAtlasSize;
    return lerp(Read16(s, a), Read16(s, b), frac(p.z));
}
float3 Curve(float3 e, bool warped)
{
    float3 u = saturate((e + 10) / 14);
    float y = (Stock * 2 + (warped ? 1 : 0) + .5) / 80;
    float3 c = float3(Read16(CurveS, float2((u.r * 2047 + .5) / 2048, y)).r,
                      Read16(CurveS, float2((u.g * 2047 + .5) / 2048, y)).g,
                      Read16(CurveS, float2((u.b * 2047 + .5) / 2048, y)).b);
    return c * 6.1 - .1;
}
float PixelUM()
{
    return Format * 1000.0 / max(BUFFER_WIDTH, BUFFER_HEIGHT);
}
void ExposePS(float4 p : SV_Position, float2 uv : TEXCOORD, out float4 raw : SV_Target0)
{
    float3 rgb = 0;
    [branch] if (LensActive())
    {
        rgb = tex2Dlod(OptH0S, float4(uv, 0, 0)).rgb;
    }
    else rgb = SceneLinear(uv);
    [branch] if (FlareActive())
    {
        float3 flare = tex2Dlod(FlareAS, float4(uv, 0, 0)).rgb;
        [branch] if (LensDirtAmount > 0)
        {
            float aspect = BUFFER_WIDTH / (float)BUFFER_HEIGHT, maskAspect = 3840.0 / 2160;
            float2 crop =
                aspect > maskAspect ? float2(1, maskAspect / aspect) : float2(aspect / maskAspect, 1);
            float2 q = .5 + (uv - .5) * crop / max(LensDirtScale, 1);
            float dirt = dot(Decode(tex2Dlod(LensDirtS, float4(q, 0, 0)).rgb), float3(.2126, .7152, .0722));
            flare *= 1 + 4 * LensDirtAmount * dirt;
        }
        rgb += flare * FlareStrength;
    }
    [branch] if (VeilStrength > 0)
    {
        rgb = max(rgb + (VeilLight(uv) - VeilSource(uv)) * VeilStrength, 0);
    }
    [branch] if (DiffractionAmount > 0)
    {
        rgb += tex2Dlod(DiffractionS, float4(uv, 0, 0)).rgb * DiffractionAmount;
    }
    rgb = GradeInput(rgb);
    float peak = max(rgb.r, max(rgb.g, rgb.b));
    if (peak < 1e-10)
    {
        raw = float4(0, 0, 0, 1);
        return;
    }
    float3 e = Cube(ExposureS, rgb / peak) * 14 - 10;
    float cameraStops = CameraExposureStops();
    raw = float4(pow(10.0, e) * peak * exp2(Exposure + cameraStops), 1);
}

float4 BlurLOD(sampler2D s, float2 uv, float2 direction, float sigma, float lod)
{
    float4 result = tex2D(s, uv);
    [branch] if (sigma >= .15)
    {
        float3 sum = 0;
        float weight = 0;
        float2 stepUV = direction * ReShade::PixelSize * max(sigma * .5, .25);
        {
const int i = -6;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = -5;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = -4;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = -3;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = -2;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = -1;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 0;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 1;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 2;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 3;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 4;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 5;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
{
const int i = 6;
            float w = exp(-.125 * i * i);
            sum += tex2Dlod(s, float4(uv + stepUV * i, 0, lod)).rgb * w;
            weight += w;
        }
        result = float4(sum / max(weight, 1e-6), 1);
    }
    return result;
}
float4 Blur(sampler2D s, float2 uv, float2 direction, float sigma)
{
    return BlurLOD(s, uv, direction, sigma, 0);
}
bool OpticalActive()
{
    return OpticalFilter > 0 && OpticalStrength > 0;
}
float4 OpticalBlur(sampler2D src, float2 uv, float2 direction, float sigma)
{
    if (!OpticalActive())
        return 0;
    if (sigma < .15)
        return tex2Dlod(src, float4(uv, 0, 0));
    float3 sum = 0;
    float norm = 0;
    {
const int i = -6;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -5;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -4;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -3;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -2;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = -1;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 0;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 1;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 2;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 3;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 4;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 5;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
{
const int i = 6;
        float w = exp(-.125 * i * i);
        float2 q = uv + direction * ReShade::PixelSize * (sigma * .5 * i);
        q = 1 - abs(2 * frac(q * .5) - 1);
        sum += tex2Dlod(src, float4(q, 0, 0)).rgb * w;
        norm += w;
    }
    return float4(sum / norm, 1);
}
float4 OptH0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(RawS, uv, float2(1, 0), LookupOpticalSigma(0) * OpticalSpread / PixelUM());
}
float4 OptV0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH0S, uv, float2(0, 1), LookupOpticalSigma(0) * OpticalSpread / PixelUM());
}
float4 OptH1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV0S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(1) * LookupOpticalSigma(1) - LookupOpticalSigma(0) * LookupOpticalSigma(0)) *
                           OpticalSpread / PixelUM());
}
float4 OptV1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH1S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(1) * LookupOpticalSigma(1) - LookupOpticalSigma(0) * LookupOpticalSigma(0)) *
                           OpticalSpread / PixelUM());
}
float4 OptH2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV1S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(2) * LookupOpticalSigma(2) - LookupOpticalSigma(1) * LookupOpticalSigma(1)) *
                           OpticalSpread / PixelUM());
}
float4 OptV2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH2S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(2) * LookupOpticalSigma(2) - LookupOpticalSigma(1) * LookupOpticalSigma(1)) *
                           OpticalSpread / PixelUM());
}
float4 OptH3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV2S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(3) * LookupOpticalSigma(3) - LookupOpticalSigma(2) * LookupOpticalSigma(2)) *
                           OpticalSpread / PixelUM());
}
float4 OptV3PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH3S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(3) * LookupOpticalSigma(3) - LookupOpticalSigma(2) * LookupOpticalSigma(2)) *
                           OpticalSpread / PixelUM());
}
float4 OptH4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV3S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(4) * LookupOpticalSigma(4) - LookupOpticalSigma(3) * LookupOpticalSigma(3)) *
                           OpticalSpread / PixelUM());
}
float4 OptV4PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH4S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(4) * LookupOpticalSigma(4) - LookupOpticalSigma(3) * LookupOpticalSigma(3)) *
                           OpticalSpread / PixelUM());
}
float4 OptH5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV4S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(5) * LookupOpticalSigma(5) - LookupOpticalSigma(4) * LookupOpticalSigma(4)) *
                           OpticalSpread / PixelUM());
}
float4 OptV5PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH5S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(5) * LookupOpticalSigma(5) - LookupOpticalSigma(4) * LookupOpticalSigma(4)) *
                           OpticalSpread / PixelUM());
}
float4 OptH6PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV5S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(6) * LookupOpticalSigma(6) - LookupOpticalSigma(5) * LookupOpticalSigma(5)) *
                           OpticalSpread / PixelUM());
}
float4 OptV6PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH6S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(6) * LookupOpticalSigma(6) - LookupOpticalSigma(5) * LookupOpticalSigma(5)) *
                           OpticalSpread / PixelUM());
}
float4 OptH7PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV6S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(7) * LookupOpticalSigma(7) - LookupOpticalSigma(6) * LookupOpticalSigma(6)) *
                           OpticalSpread / PixelUM());
}
float4 OptV7PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH7S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(7) * LookupOpticalSigma(7) - LookupOpticalSigma(6) * LookupOpticalSigma(6)) *
                           OpticalSpread / PixelUM());
}
float4 OptH8PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV7S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(8) * LookupOpticalSigma(8) - LookupOpticalSigma(7) * LookupOpticalSigma(7)) *
                           OpticalSpread / PixelUM());
}
float4 OptV8PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH8S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(8) * LookupOpticalSigma(8) - LookupOpticalSigma(7) * LookupOpticalSigma(7)) *
                           OpticalSpread / PixelUM());
}
float4 OptH9PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptV8S, uv, float2(1, 0),
                       sqrt(LookupOpticalSigma(9) * LookupOpticalSigma(9) - LookupOpticalSigma(8) * LookupOpticalSigma(8)) *
                           OpticalSpread / PixelUM());
}
float4 OptV9PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return OpticalBlur(OptH9S, uv, float2(0, 1),
                       sqrt(LookupOpticalSigma(9) * LookupOpticalSigma(9) - LookupOpticalSigma(8) * LookupOpticalSigma(8)) *
                           OpticalSpread / PixelUM());
}
float OpticalFraction()
{
    float s = clamp(log2(max(OpticalStrength, .125)), -3, 1);
    float a = s < -2 ? lerp(.10, .20, s + 3)
                     : (s < -1 ? lerp(.20, .35, s + 2) : (s < 0 ? lerp(.35, .55, s + 1) : lerp(.55, .75, s)));
    return min(.99, a * LookupOpticalGain(clamp(OpticalFilter - 1, 0, 3))) * saturate(OpticalStrength / .125);
}
float4 OpticalMergePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float4 raw = tex2Dlod(RawS, float4(uv, 0, 0));
    if (!OpticalActive())
        return raw;
    int family = clamp(OpticalFilter - 1, 0, 3);
    float3 spread = 0;
    spread += tex2Dlod(OptV0S, float4(uv, 0, 0)).rgb * LookupOpticalWeight0(family);
    spread += tex2Dlod(OptV1S, float4(uv, 0, 0)).rgb * LookupOpticalWeight1(family);
    spread += tex2Dlod(OptV2S, float4(uv, 0, 0)).rgb * LookupOpticalWeight2(family);
    spread += tex2Dlod(OptV3S, float4(uv, 0, 0)).rgb * LookupOpticalWeight3(family);
    spread += tex2Dlod(OptV4S, float4(uv, 0, 0)).rgb * LookupOpticalWeight4(family);
    spread += tex2Dlod(OptV5S, float4(uv, 0, 0)).rgb * LookupOpticalWeight5(family);
    spread += tex2Dlod(OptV6S, float4(uv, 0, 0)).rgb * LookupOpticalWeight6(family);
    spread += tex2Dlod(OptV7S, float4(uv, 0, 0)).rgb * LookupOpticalWeight7(family);
    spread += tex2Dlod(OptV8S, float4(uv, 0, 0)).rgb * LookupOpticalWeight8(family);
    spread += tex2Dlod(OptV9S, float4(uv, 0, 0)).rgb * LookupOpticalWeight9(family);
    return float4(lerp(raw.rgb, spread, OpticalFraction()), raw.a);
}

float4 HalH0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(1.0) / PixelUM() : 0, 1);
}
float4 Hal0PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH0S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(1.0) / PixelUM() : 0);
}
float4 HalH1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(2.0) / PixelUM() : 0, 1);
}
float4 Hal1PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH1S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(2.0) / PixelUM() : 0);
}
float4 HalH2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(OpticalRawS, uv, float2(1, 0), Halation > 0 ? 65 * sqrt(3.0) / PixelUM() : 0, 1);
}
float4 Hal2PS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(HalH2S, uv, float2(0, 1), Halation > 0 ? 65 * sqrt(3.0) / PixelUM() : 0);
}
float4 CoupHCorePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(InhibitorS, uv, float2(1, 0), Adjacency ? 20.0 / PixelUM() : 0);
}
float4 CoupCorePS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(CoupHCoreS, uv, float2(0, 1), Adjacency ? 20.0 / PixelUM() : 0);
}
float4 CoupHTailPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return BlurLOD(InhibitorS, uv, float2(1, 0), Adjacency ? 200.0 / PixelUM() : 0, 1);
}
float4 CoupTailPS(float4 p : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    return Blur(CoupHTailS, uv, float2(0, 1), Adjacency ? 200.0 / PixelUM() : 0);
}

void PreparePS(float4 p : SV_Position, float2 uv : TEXCOORD, out float4 logE : SV_Target0,
               out float4 inhibitor : SV_Target1)
{
    float3 raw = tex2D(OpticalRawS, uv).rgb;
    [branch] if (Halation > 0)
    {
        float3 h = (tex2D(Hal0S, uv).rgb + .5 * tex2D(Hal1S, uv).rgb + .25 * tex2D(Hal2S, uv).rgb) / 1.75;
        float3 hs = float3(.05, .015, 0) * Halation;
        raw = (raw + hs * h) / (1 + hs);
    }
    float3 e = log10(max(raw, 1e-10));
    float3 d = Curve(e, false);
    float3 silver = LookupPositive(Stock) ? LookupDMax(Stock) - d : d;
    inhibitor = float4(dot(silver, LookupMC0(Stock)), dot(silver, LookupMC1(Stock)), dot(silver, LookupMC2(Stock)), 1);
    logE = float4(e, 1);
}
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
    float3 dm = max(LookupDMax(Stock), .1), range = dm + .03;
    float3 a0 = LookupAmp0(Stock), a1 = LookupAmp1(Stock), a2 = LookupAmp2(Stock);
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
    {
const int y = -1;
        {
const int x = -1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 0;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 2;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
    }
{
const int y = 0;
        {
const int x = -1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 0;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 2;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
    }
{
const int y = 1;
        {
const int x = -1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 0;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 2;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
    }
{
const int y = 2;
        {
const int x = -1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 0;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 1;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
        }
{
const int x = 2;
            float2 d = float2(x, y) - f;
            float win = max(0, 1 - dot(d, d) * .25);
            win *= win;
            {
const int k = 0;
                uint3 h = Pcg(uint3(uint2(ip + int2(x, y)), seed ^ (uint)k));
                float2 jitter = float2(h.x & 4095u, (h.x >> 12) & 4095u) / 4096 - .5;
                float3 n = float3(h.y & 255u, (h.y >> 8) & 255u, (h.y >> 16) & 255u) * (2.0 / 255) - 1;
                float w = exp2(-dot(d + jitter, d + jitter) * kernel) * win;
                acc += n * w;
                wsq += w * w;
            }
{
const int k = 1;
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
    float3 code = (density + .05) / (LookupDMax(Stock) + .1);
    // Endpoint branches retain one lookup at the original and softer settings.
    float3 result = 0;
    [branch] if (LookupPositive(Stock) || PaperContrast >= 1.0)
    {
        result = StockPrint(code);
    }
    else if (PaperContrast < .8)
    {
        // Below the baked endpoint, compress print-input density around neutral grey.
        // Zero is a flat print; 0.8 retains the existing upstream-baked response.
        float3 compressed = lerp(LookupPrintPivot(Stock), density, saturate(PaperContrast / .8));
        result = SoftPrint((compressed + .05) / (LookupDMax(Stock) + .1));
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
