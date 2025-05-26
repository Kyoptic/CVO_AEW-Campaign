/*=================================================*
	CVO_ARSENAL_DEFINE
*=================================================*

Here, you define the Available Equipment for the CVO Arsenal
It is seperated in 3 Parts

##################
1. BASE KIT - This is Available for Everyone
##################


Variable Name: cvo_arsenal_base = [];

For easier reading it is suggested to compartmentalise
and append the individual Groups to cvo_arsenal_base



##################
### 2. ROLE KIT - This is dependent on the Players Role.
##################

Traits like "Medic" or "Engineer" are automatically detected,
meaning manually giving a player the medic or doctor trait isnt necessary.

##################
3. Personal KIT - Add Items to individual players based on their UID(steam64)
##################

This is based on Code blocks to allow for checks.

##################

BASE KIT gets defined once in the beginning, as it will never change during during mission.

ROLE KIT gets updated each time the arsenal opens as Roles and Traits might change mid-mission (Ad-hoc Medic)
PLAYER KIT gets updated each time the arsenal opens as it CAN be dependend on other Roles and Traits as well.


##################


*=================================================*/  


diag_log ("[CVO] [Arsenal_Define] - start");


// #####################################################
// ###### DEFINE ARSENAL BOXES HERE - objects that give accesss to the CVO Arsenal
// #####################################################
// ######  Define the Editor Layername here
// #####################################################

#define EDITOR_LAYER_NAME "CVO_Arsenal_Boxes"
//#define EDITOR_LAYER_NAME "CVO_Arsenal"

// #####################################################
// ###### CODE - DONT CHANGE
// #####################################################

if (isServer) then {
	_array = (getMissionLayerEntities EDITOR_LAYER_NAME)#0;
	[_array] remoteExecCall ["cvo_arsenal_fnc_addAction", [0,-2] select isDedicated, true];
};

if (!hasInterface) exitWith {};

// #####################################################
// ###### DEFINE BASE KIT HERE - AVAILABLE FOR EVERYONE
// #####################################################

cvo_arsenal_base = [];

// ###### Baseline Equipment ###### 
// The Following can be mostly left as default


// How to add Equipment if a certain Addon is Loaded - here, GreenMag
if (isClass (configFile >> "CfgPatches" >> "greenmag_main")) then {

		cvo_arsenal_base append [
			//"greenmag_ammo_556x45_basic_60Rnd",
			//"greenmag_ammo_556x45_basic_30Rnd",

			"greenmag_ammo_762x51_basic_60Rnd",
			"greenmag_ammo_762x51_basic_30Rnd",

			//"greenmag_ammo_545x39_basic_60Rnd",
			//"greenmag_ammo_545x39_basic_30Rnd",

			//"greenmag_ammo_762x39_basic_60Rnd",
			//"greenmag_ammo_762x39_basic_30Rnd",
			
			"greenmag_ammo_9x21_basic_60Rnd",
			"greenmag_ammo_9x21_basic_30Rnd",

			//"greenmag_ammo_45ACP_basic_30Rnd",
			//"greenmag_ammo_45ACP_basic_60Rnd",
		
			//"greenmag_ammo_762x54_basic_60Rnd",
			//"greenmag_ammo_762x54_basic_30Rnd",

			"greenmag_item_speedloader"
		];
	diag_log "[CVO] [ARSENAL_DEFINE] - GreenMag added";
};


// Medical 
cvo_arsenal_base append [
	"ACE_packingBandage",
	"ACE_fieldDressing",
	"ACE_tourniquet", 
	"ACE_splint",
	"ACE_morphine",
	"ACE_epinephrine", 
	"ACE_salineIV", 
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_bodyBag"];

// Tools & Equipment

private _rations = [
	"ACE_MRE_BeefStew",
	"ACE_MRE_ChickenTikkaMasala",
	"ACE_MRE_ChickenHerbDumplings",
	"ACE_MRE_CreamChickenSoup",
	"ACE_MRE_CreamTomatoSoup",
	"ACE_MRE_LambCurry",
	"ACE_MRE_MeatballsPasta",
	"ACE_MRE_SteakVegetables"
];
cvo_arsenal_base append _rations;

cvo_arsenal_base append [
	"ChemicalDetector_01_watch_F",
	"ItemAndroid",
	"ItemcTabHCam",

	"immersion_pops_poppack",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"immersion_cigs_cigar0",
	"immersion_cigs_cigar0_nv",

	"ACE_Humanitarian_Ration",

	"ACE_MapTools",
	"ace_marker_flags_yellow",
	"ace_marker_flags_red",
	"ace_marker_flags_green",
	"ace_marker_flags_blue",

	"ACE_EntrenchingTool",
	"ACE_EarPlugs",

	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_PlottingBoard",
	"ACE_UAVBattery",

	"ACE_DAGR",
	"ACE_CableTie",
	"ACE_Chemlight_Shield",
	"acex_intelitems_notepad",
	"ACE_Flashlight_KSF1",
	
	"ACE_WaterBottle",
	"ACE_Canteen",	

	"tsp_paperclip",
	"ACE_EHP",

	"ItemMap",
	"ItemWatch",
	"ItemCompass"];

// Binoculars
cvo_arsenal_base append [
	"Nikon_DSLR_HUD",
	"Nikon_DSLR",
	"Binocular",
	"Camera_lxWS",
	"Hate_Smartphone_HUD",
	"ACE_Yardage450"
	];

// NVGs
cvo_arsenal_base append [	
	//actual nvgs
	//"ACE_NVG_Gen4",
	//"ACE_NVG_Gen3_WP",
	//armbands
	"Aegis_NV_G_Armband_Blu_Alt_F",
	"Aegis_NV_G_Armband_Blu_F",
	//cigs and lollipop - Christ why are there so many ciggies?
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"cigs_Apollo_cigpack",
	"cigs_black_devil_cigpack",
	"cigs_cigars_cigarbox_5",
	"cigs_craven_cigpack",
	"cigs_eckstein_cigpack",
	"cigs_Kosmos_cigpack",
	"cigs_lighter",
	"cigs_pops_poppack",
	"cigs_lucky_strike_cigpack",
	"cigs_matches",
	"cigs_morley_cigpack",
	"cigs_baja_blast_cigpack",
	"cigs_crayons_crayonpack",
	"cigs_Voron_cigpack"
];


// Rappeling Rope 
cvo_arsenal_base append [
	"AUR_Rappel_Rope_70",
	"AUR_Rappel_Rope_50",
	"AUR_Rappel_Rope_30",
	"AUR_Rappel_Rope_20",
	"AUR_Rappel_Rope_10",
	"AUR_Rappel_Gear"];

// Radios
cvo_arsenal_base append  ["ACRE_PRC343", "ACRE_PRC152"];

// ###### Wearables ###### 

// Uniforms 
cvo_arsenal_base append [
	//mgp g3 uniforms 
	/*"milgp_u_g3_field_set_3cd",
	"milgp_u_g3_field_set_aor1",
	"milgp_u_g3_field_set_atacsau",
	"milgp_u_g3_field_set_khk",
	"milgp_u_g3_field_set_rolled_3cd",
	"milgp_u_g3_field_set_rolled_aor1",
	"milgp_u_g3_field_set_rolled_atacsau",
	"milgp_u_g3_field_set_rolled_khk",
	"milgp_u_g3_field_set_rolled_mcarid",
	"milgp_u_tshirt_g3_field_pants_3CD",
	"milgp_u_tshirt_g3_field_pants_aor1",
	"milgp_u_tshirt_g3_field_pants_atacsau",
	"milgp_u_tshirt_g3_field_pants_khk",
	"milgp_u_tshirt_g3_field_pants_mcarid",
	*/
	//Low Vis Clothing
/* 	"WSLV_Black_gn_black_Camo",
	"WSLV_Black_black_Camo",
	"WSLV_Black_blue_stripes_Camo",
	"WSLV_Black_blue_Camo",
	"WSLV_Black_brown_Camo",
	"WSLV_Black_gn_green_Camo",
	"WSLV_Black_green_Camo",
	"WSLV_Black_grey_Camo",
	"WSLV_Black_sand_Camo",
	"WSLV_Black_white_Camo",
	"WSLV_Black_gn_wine_Camo",
	"WSLV_Black_yellow_Camo",
	"WSLV_Brown_gn_black_Camo",
	"WSLV_Brown_black_Camo",
	"WSLV_Brown_blue_stripes_Camo",
	"WSLV_Brown_blue_Camo",
	"WSLV_Brown_brown_Camo",
	"WSLV_Brown_gn_green_Camo",
	"WSLV_Brown_green_Camo",
	"WSLV_Brown_grey_Camo",
	"WSLV_Brown_sand_Camo",
	"WSLV_Brown_white_Camo",
	"WSLV_Brown_gn_wine_Camo",
	"WSLV_Brown_yellow_Camo", */
	////UNA uniforms
	// "U_lxWS_UN_Camo3",
	// "U_lxWS_UN_Camo2"
	//Aegis/Atlas Contractor Uniforms
	"Aegis_U_lxWS_ION_Flanneltna_F",
	"U_lxWS_ION_Casual4",
	"U_lxWS_ION_Casual2",
	"Aegis_U_lxWS_ION_Casualtna_F",
	"U_lxWS_ION_Casual6",
	//"U_I_L_Uniform_01_camo_F",
	"Opf_U_O_S_Uniform_01_sweater_F",
	"U_lxWS_SFIA_deserter",
	//"Atlas_U_CombatUniformNCU_01_mcam_F",
	//"Atlas_U_CombatUniformNCU_02_mcam_F",
	"Atlas_U_B_G_CombatUniform_tshirt_arid",
	"Atlas_U_O_Afghanka_01_grn_F",
	"Atlas_U_O_Afghanka_02_grn_F",
	"Atlas_U_O_Afghanka_01_khk_F",
	"Atlas_U_O_Afghanka_02_khk_F",
	"Atlas_U_I_Afghanka_01_ardi_half_F",
	"Atlas_U_I_Afghanka_02_ardi_half_F",
	"MYR_fat_7",
	"MYR_fat_5",
	"MYR_fat_6",
	"MYR_fat_8",
	"MYR_fat_9",
	"MYR_fat_3",
	"MYR_fat_2",
	"MYR_fat_4",
	"MYR_fat_1"
	];

// Vests
cvo_arsenal_base append [
	
	"Aegis_V_OCarrierLuchnik_Lite_blk_F",
	"V_PlateCarrier1_blk",
	"V_PlateCarrier1_cbr",
	"V_PlateCarrier2_blk",
	"V_PlateCarrier2_cbr",
	"V_Chestrig_blk",
	"V_HarnessOSpec_blk",
	"Aegis_V_SmershVest_01_blk_F",
	"V_SmershVest_01_F",
	"V_SmershVest_01_olive_F",
	"V_HarnessO_blk",
	"Aegis_V_CarrierRigKBT_01_cqb_black_F",
	"Aegis_V_CarrierRigKBT_01_cqb_cbr_F",
	//Myrmidones Inc Vests
	"MYR_vest_nato_mixed_1_1",
	"MYR_vest_nato_mixed_1_2",
	"MYR_vest_GA_lite_blk",
	"MYR_vest_GA_rig_blk"
];

// Backpacks
cvo_arsenal_base append [
	"ace_gunbag_Tan",

	"B_LegStrapBag_coyote_F",
	"B_AssaultPack_cbr",
	"B_AssaultPackSpec_cbr",
	"B_Carryall_cbr",
	"B_FieldPack_cbr",
	"B_Kitbag_cbr",
	"Aegis_B_patrolBackpack_cbr_F"
	];

// Headgear
cvo_arsenal_base append [
	"H_HelmetHBK_arid_F",
	"H_HelmetHBK_olive_headset_F",
	"H_HelmetHBK_arid_headset_F",
	"H_HelmetHBK_olive_F",
	"H_Cap_headphones_ion_lxws",
	"lxWS_H_CapB_rvs_blk_ION",
	"Aegis_H_Helmet_Virtus_Headset_rgr_F",
	"Aegis_H_Helmet_Virtus_snd_F",
	"Atlas_H_PASGT_Cover_Olive_F",
	"Atlas_H_PASGT_Cover_Tan_F",
	"H_Beret_Headset_lxWS",
	"H_Booniehat_blk",
	"H_Booniehat_mgrn_hs",
	"H_Cap_blk_CMMG",
	//Myrmidones stuff
	"MYR_basic_helmet_gray",
	"MYR_basic_helmet_khaki",
	"MYR_cap_blk",
	"MYR_cap_red",
	"MYR_cap",
	"MYR_cap_headphones",
	"MYR_cap_hs",
	"MYR_hel_ech_1",
	"MYR_hel_sf_1",
	"MYR_hel_lgt_1",
	"G_Tactical_Yellow",
	"G_Tactical_Black"
	];

// Facewear
cvo_arsenal_base append [
	//vanilla+ glasses
	"G_Aviator",
	"G_Glasses_black_RF",
	"G_Glasses_white_RF",
	"G_Spectacles",
	"G_Tactical_Clear",
	"G_Tactical_Yellow",
	"G_Lady_Blue",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Tactical_Black",
	"G_Shades_Yellowred",
	"G_Shemag_shades",
	"G_Tactical_Camo",
	"G_Squares_Tinted",
	"G_Shemag_tactical",
	//milgear glasses
	"milgp_f_tactical_khk",
	"milgp_f_face_shield_shades_BLK",
	"milgp_f_face_shield_shades_CB",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_RGR",
	"milgp_f_face_shield_shades_shemagh_BLK",
	"milgp_f_face_shield_shades_shemagh_CB",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_RGR",
	//vanilla goggles
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Combat",
	"G_Combat_Goggles_blk_F",
	"G_Combat_lxWS",
	"G_Balaclava_light_G_blk_F",
	"G_Lowprofile",
	//milgear goggles
	"milgp_f_face_shield_goggles_BLK",
	"milgp_f_face_shield_goggles_CB",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_RGR",
	"milgp_f_face_shield_goggles_shemagh_BLK",
	"milgp_f_face_shield_goggles_shemagh_CB",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_RGR",
	"milgp_f_goggles_khk",
	//vanilla+ misc 
	"G_Headset_light",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Headset_Tactical",
	"G_Headset_Tactical_khk",
	"G_Headset_Tactical_grn",
	"G_Balaclava_blk_lxWS",
	"G_Balaclava_snd_lxWS",
	"G_Headset_lxWS",
	//milgear misc 
	"milgp_f_face_shield_BLK",
	"milgp_f_face_shield_CB",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_RGR",
	"milgp_f_face_shield_shemagh_BLK",
	"milgp_f_face_shield_shemagh_CB",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_RGR",
	//vanilla+ armbands
	"Aegis_G_Armband_BLU_F",
	"Aegis_G_Armband_BLU_alt_F",
	//cigs and lollipop
	"cigs_lucky_strike_cigpack",
	"cigs_lighter",
	"cigs_baja_blast_cigpack",
	"cigs_black_devil_cigpack",
	"cigs_eckstein_cigpack",
	"ACE_RangeCard"];

// ###### WEAPONS - MAIN ###### 

// Rifles
cvo_arsenal_base append  [
	// SMGs
	"JCA_smg_UMP_black_F",
	"JCA_smg_UMP_AFG_black_F",
	"JCA_smg_UMP_VFG_black_F",
	"Aegis_SMG_Gepard_blk_F",
	//SMG Mags
	"Aegis_40Rnd_9x21_Gepard_Mag_F",
	"Aegis_40Rnd_9x21_Gepard_Green_Mag_F",
	"Aegis_20Rnd_9x21_Gepard_Mag_F",
	"JCA_25Rnd_45ACP_UMP_Mag",
	"JCA_25Rnd_45ACP_UMP_Yellow_Mag",
	"JCA_25Rnd_45ACP_UMP_Tracer_Yellow_Mag",
	
	//AKs
	"Aegis_arifle_AKM74_F",
	"Aegis_arifle_AKM74_GL_F",
	"arifle_AKSM_F",
	//AK mags
	"30Rnd_545x39_Black_Mag_Yellow_F",
	"30Rnd_545x39_Mag_F",
	"30Rnd_545x39_Black_Mag_Tracer_Yellow_F",

	// Shotty
	"sgun_Mp153_black_F",
	"4Rnd_12Gauge_Pellets",
	"4Rnd_12Gauge_Slug",
	
	//Pistols
	"hgun_Pistol_01_F",
	"10Rnd_9x21_Mag",
	"hgun_Rook40_F",
	"17Rnd_9x21_Mag",
	"hgun_G17_black_F",
	"hgun_Glock19_RF",
	
	//Minesweepers
	"ACE_VMH3",
	"ACE_VMM3",
	
	"1Rnd_HE_Grenade_shell",
	"1Rnd_HEDP_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",

	//flashlight 
	"acc_flashlight",
	//suppressors
/* 	"muzzle_snds_B",
	"muzzle_snds_B_arid_F",
	"muzzle_snds_B_snd_F",
	"suppressor_h_lxWS",
	"suppressor_h_arid_lxWS",
	"suppressor_h_sand_lxWS",
	"suppressor_h_snake_lxWS", */
	//basic optics
	"optic_Holosight_smg_blk_F",
	"optic_ACO_grn_desert_RF",
	//"Aegis_optic_ACOG",
	"optic_Arco_blk_F",
	"Aegis_optic_ICO",
	"optic_ACO_grn",
	"optic_Aco",
	//"optic_Hamr",
	"optic_Holosight_blk_F",
	"optic_Holosight_arid_F",
	//"optic_VRCO_RF",
	"Aegis_optic_ICO",
	"Aegis_optic_ICO_sand",
	//"Aegis_optic_ROS",
	"optic_r1_high_black_sand_lxWS",
	"optic_r1_high_sand_lxWS",
	"optic_r1_high_snake_lxWS",
	"optic_r1_high_lxWS",
	"optic_r1_low_lxWS",
	"optic_r1_low_sand_lxWS",
	"optic_r1_low_snake_lxWS",
	"saber_light_lxWS",
	"bipod_01_F_blk",
	"optic_Aco_smg",
	"optic_Holosight_smg_blk_F",
	"Aegis_optic_ROS_SMG"
	];

// Pistols
cvo_arsenal_base append [
	"acc_flashlight_pistol",
	"hgun_Rook40_F",
	"hgun_P07_F",
	"hgun_G17_F",
	"16Rnd_9x21_Mag_v2",
	"hgun_Rook40_F",
	"17Rnd_9x21_Mag"
	];

// Handgrenades and Throwables
cvo_arsenal_base append   [

	"ACE_CTS9",
	"HandGrenade",
	"SmokeShell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"MiniGrenade",
	"Aegis_HandFlare_Green",
	"Aegis_HandFlare_Red",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Yellow",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",

	"Chemlight_yellow",
	"Chemlight_red",
	"Chemlight_blue",
	"Chemlight_green",
	"ACE_Chemlight_Orange",
	"ACE_Chemlight_White",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_UltraHiOrange"];

// Explosives
cvo_arsenal_base append [
	
	];
	
//EOD KIT
cvo_arsenal_base append [
	"ChemicalDetector_01_tan_F",
	"ACE_DefusalKit",
	"ACE_Clacker",
	"iedd_item_notebook"
	];

// CBRN KIT
cvo_arsenal_base append [
	"U_C_CBRN_Suit_01_Blue_F", 
	"G_AirPurifyingRespirator_01_F",
	"G_RegulatorMask_F", 
	"B_SCBA_01_F"];


// #####################################################
// ###### DEFINE ROLE KIT HERE - AVAILABLE FOR SPECIFIC ROLES
// #####################################################

// CUSTOM ROLES
// Formatting Template: [  "KEY/ROLENAME",	[  ["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]

// #####################################################
// ## HOW TO DEFINE A UNIT AS A SPECIFIC ROLE:
// ## UNIT INIT FIELD IN THE EDITOR:
// this setVariable ["CVO_A_Roles",["Officer"]];
// ## Further Notes: 
// -- "Medic" and "Engineer" are autoDetected based on ACE Skill Level  
// #####################################################


CVO_A_HASH_RoleKit = createHashMapFromArray [
	["Medic", [[
		// "arifle_SLR_Para_lxWS",
		// "arifle_SLR_Para_snake_lxWS",
		"ACE_quikclot", 
		"ACE_elasticBandage", 
		"ACE_adenosine", 
		"ACE_plasmaIV",
		"ACE_plasmaIV_500",
		"ACE_plasmaIV_250",
		"ACE_bloodIV",
		"ACE_bloodIV_500",
		"ACE_bloodIV_250",
		// "ACE_suture",
		"ACE_surgicalKit"
	],
	{}]],
	["Engineer", [[
		// "arifle_SLR_Para_lxWS",
		// "arifle_SLR_Para_snake_lxWS",
		//Helmets and armor 
		// "Aegis_V_OCarrierLuchnik_CQB_blk_F",
		// "H_HelmetHeavy_White_RF",
		// "H_HelmetHeavy_Simple_White_RF",
		// "H_HelmetHeavy_VisorUp_White_RF",
		// "PLP_UNA_V_CarrierRigKBT_01_heavy_F",
		// Tools and Detectors
		"ACE_VMM3",
		"ACE_VMH3", 
		"ACE_wirecutter", 
		"ToolKit", 
		"ACE_Fortify", 
		"ACE_DefusalKit",

		//aa12
		// "sgun_aa40_lxWS",
		// "sgun_aa40_tan_lxWS",
		// "sgun_aa40_snake_lxWS",
		// "8Rnd_12Gauge_AA40_Slug_lxWS",
		// "8Rnd_12Gauge_AA40_Slug_Snake_lxWS",
		// "8Rnd_12Gauge_AA40_Slug_Tan_lxWS",
		// "8Rnd_12Gauge_AA40_Pellets_lxWS",
		// "8Rnd_12Gauge_AA40_Pellets_Snake_lxWS",
		// "8Rnd_12Gauge_AA40_Pellets_Tan_lxWS",
		
		//M4 Shotgun
		// "sgun_M4_F",
		// "8Rnd_12Gauge_Slug",
		// "8Rnd_12Gauge_Pellets",
		
		// Explosives
		"tsp_breach_popper_mag",
		"tsp_breach_popper_auto_mag",
		//"tsp_breach_silhouette_mag",
		//"tsp_breach_stick_mag",
		"ACE_Clacker",
		"DemoCharge_Remote_Mag",	"ACE_DemoCharge_Remote_Mag_Throwable",
		"SatchelCharge_Remote_Mag",	"ACE_SatchelCharge_Remote_Mag_Throwable"
		], 
		{}]],
	["Machinegunner", [[
		//RPK
		"75Rnd_762x39_Mag_F",
		"Aegis_arifle_RPK74M_F",
		"arifle_RPK_F",
		"Aegis_45Rnd_545x39_Mag_F",
		"Aegis_45Rnd_545x39_Mag_Tracer_F",
		
		/* //SS-77 Vektor
		"LMG_S77_Desert_lxWS",
		"LMG_S77_lxWS",
		"LMG_S77_Compact_lxWS",
		"LMG_S77_Compact_Snakeskin_lxWS",
		//100 rnd belts
		"100Rnd_762x51_S77_Red_lxWS",
		"100Rnd_762x51_S77_lxWS",
		//30rnd FAL mags
		"Aegis_30Rnd_762x51_slr_tracer_red_lxWS",
		"30Rnd_762x51_slr_Snake_tracer_Red_lxWS",
		"30Rnd_762x51_slr_lxWS",
		// Greenmag
		"greenmag_beltlinked_762x51_basic_100", */
		"ACE_SpareBarrel"
		], 
	{}]],
	["Anti-Tank", [[

		//RPG-32
		//"launch_RPG32_tan_lxWS",
		//"RPG32_F",
		//"RPG32_HE_F",

		//MPRL Compact
		//"launch_B_Titan_short_F",
		//"Titan_AT",

		//FAL GL and ammo
/* 		"arifle_SLR_GL_lxWS",
		"arifle_SLR_V_GL_lxWS",
		"1Rnd_50mm_Smoke_lxWS",
		"1Rnd_58mm_AT_lxWS", */
		
		//RPG7
		"launch_RPG7_F",
		"RPG7_F",
		"PSRL1_FRAG_RF",
		//"Aegis_launch_RPG7M_F", //For upgrade
		
		//PSRL Fancy RPG
		"launch_PSRL1_PWS_black_RF",
		"launch_PSRL1_PWS_olive_RF",
		"PSRL1_AT_RF",
		"PSRL1_FRAG_RF",
		"PSRL1_HE_RF",
		"PSRL1_HEAT_RF"

		// Single Use
		//"launch_NLAW_F"
		], 
	{}]],
	["Marksman", [[
		//SVD
		"Aegis_srifle_SVD_f",
		"Aegis_srifle_SVD_blk_f",
		"10Rnd_762x54_Mag",
		"Aegis_10Rnd_762x54_SVD_Red_Mag_F",

		//HADES H6 rifle
		// "srifle_h6_blk_rf",
		// "srifle_h6_tan_rf",		
		// "suppressor_l_lxWS",
		// "suppressor_l_sand_lxWS",		
		// "bipod_02_F_arid",
		// "bipod_01_F_snd",
		// "bipod_02_F_tan",
		// "bipod_03_F_blk",
		// "bipod_02_F_blk",
		// "bipod_01_F_blk",

		//ammo
		"greenmag_ammo_556x45_basic_60Rnd",
		"greenmag_ammo_556x45_basic_30Rnd",
		"10Rnd_556x45_AP_Stanag_red_RF",
		"10Rnd_556x45_AP_Stanag_red_Tan_RF",

		//accessories
		"optic_DMS",
		"optic_SOS",
		// "suppressor_h_lxWS",
		// "suppressor_h_sand_lxWS",
		// "suppressor_h_snake_lxWS",
		
		//Utility
		"ACE_Tripod",
		"ACE_RangeCard",
		"Rangefinder"
		], 
	{}]],
	["Drone Operator", [
		[
		//AR-2 Darter 
		"ION_UAV_01_backpack_lxWS",

		//GLX grenade launcher and ammo
		"glaunch_GLX_snake_lxWS",
		"glaunch_GLX_lxWS",
		"glaunch_GLX_tan_lxWS",

		"1Rnd_RC40_HE_shell_RF",
		"1Rnd_RC40_shell_RF",

		"1Rnd_RC40_SmokeBlue_shell_RF",
		"1Rnd_RC40_SmokeGreen_shell_RF",
		"1Rnd_RC40_SmokeOrange_shell_RF",
		"1Rnd_RC40_SmokeRed_shell_RF",
		"1Rnd_RC40_SmokeWhite_shell_RF",
		//spectrum device
		"hgun_esd_01_F",
		"acc_esd_01_flashlight",
		"muzzle_antenna_01_f",
		"muzzle_antenna_03_f",
		"muzzle_antenna_02_f",
		//drone terminal
		"B_UavTerminal",
		
		//LR radio
		"ACRE_PRC148"
		],
	{}]],
	["Interpreter", [[
		"SMG_04_blk_F",
		"40Rnd_460x30_Mag_F"		
		],
	{}]],
	["Officer", [[
		//* /FAL para 
/* 		"arifle_SLR_Para_lxWS",
		"arifle_SLR_Para_snake_lxWS", */

		//FAL GL and Smoke-RifleGrenade
		/* "arifle_SLR_GL_lxWS",
		"arifle_SLR_V_GL_lxWS",
		"1Rnd_50mm_Smoke_lxWS", */ */


		//officer uniform
		/* "U_lxWS_UN_Camo1",
		"lxWS_H_Beret_Colonel", */

		//officer tech
		"optic_VRCO_RF",
		"optic_Hamr",
		"ItemcTab",

		//Laser Designator
		"Rangefinder",

/* 		"Laserdesignator",
		"LaserdesignatorGPS_01",
		"Laserbatteries", */

		//ACRE GroundSpike and Mast
		"ACRE_VHF30108SPIKE", 
		"ACRE_VHF30108", 
		"ACRE_VHF30108MAST",
		"ACRE_PRC148"
		],
	{}]]
];

// #####################################################
// ###### DEFINE PLAYER KIT HERE - Based on STEAM64 ID
// #####################################################

// Formatting Template: [  "STEAM64",	["PlayerName", "["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]


CVO_A_HASH_PlayerKit = createHashMapFromArray [
	["_SP_PLAYER_", 		["Editor Debug", 	["ACE_Banana"],		{systemChat "CVO_A_Playerkit test Successful - ACE_Sandbag_empty Given"; 	["ACE_Sandbag_empty"]}		]	],	
	["76561197970306509", 	["Zorn", 			["G_Spectacles_Tinted", "G_Balaclava_blk", "H_Beret_blk", "B_LegStrapBag_black_F", "WSLV_Brown_gn_black_Camo", "ACE_SpraypaintBlack"],	{[]}	]],
	//["76561198090236234", 	["Recon", 			[],	{[]}	]],
	//["76561198147307775", 	["Clone", 			[],	{[]}	]] 	
];


////////////////////////////////////////////
///////////// Default Loadouts /////////////
////////////////////////////////////////////


[
	"Rifleman - Empty",
	[[[],[],[],["U_lxWS_UN_Camo3",[["ACE_packingBandage",10],["ACE_fieldDressing",10],["ACE_morphine",2],["ACE_epinephrine",1],["ACE_tourniquet",2],["ACE_splint",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_bodyBag",2],["acex_intelitems_notepad",1,1],["ACE_Chemlight_Orange",2,1]]],["PLP_UNA_V_CarrierRigKBT_01_light_F",[["ACRE_PRC343",1],["ACE_SpraypaintRed",1],["SmokeShell",2,1],["HandGrenade",2,1]]],["B_LegStrapBag_coyote_F",[["ACE_WaterBottle",2],[selectRandom _rations,1],["ACE_bodyBag",1],["ACE_personalAidKit",1],["ACE_salineIV_250",1],["greenmag_item_speedloader",1],["SmokeShell",2,1]]],"PLP_UNA_H_Cap","",["Binocular","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","CVO_insignia_11_PVT"],["grad_slingHelmet","PLP_UNA_H_HelmetB"]]]
] call ace_arsenal_fnc_addDefaultLoadout;

[
	"Rifleman - Basic",
	[[["arifle_SLR_V_lxWS","","","optic_r1_high_lxWS",["20Rnd_762x51_slr_lxWS",20],[],""],[],[],["U_lxWS_UN_Camo3",[["ACE_packingBandage",10],["ACE_fieldDressing",10],["ACE_morphine",2],["ACE_epinephrine",1],["ACE_tourniquet",2],["ACE_splint",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_MapTools",1],["ACE_Chemlight_Shield",1],["ACE_bodyBag",2],["acex_intelitems_notepad",1,1],["ACE_Chemlight_Orange",2,1]]],["PLP_UNA_V_CarrierRigKBT_01_light_F",[["ACRE_PRC343",1],["ACE_SpraypaintRed",1],["SmokeShell",2,1],["HandGrenade",2,1],["Aegis_20Rnd_762x51_slr_reload_tracer_red_lxWS",7,20]]],["B_AssaultPackSpec_cbr",[["greenmag_item_speedloader",1],["greenmag_ammo_762x51_basic_60Rnd",5],["ACE_bodyBag",2],["ACE_personalAidKit",1],["ACE_EntrenchingTool",1],["ACE_Humanitarian_Ration",2],["ACE_WaterBottle",2],[selectRandom _rations,1],["ACE_salineIV_500",2],["ace_marker_flags_red",5],["ACE_EarPlugs",2],["Aegis_20Rnd_762x51_slr_reload_tracer_red_lxWS",3,20],["SmokeShell",2,1]]],"PLP_UNA_H_Cap","",["Binocular","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","CVO_insignia_11_PVT"],["grad_slingHelmet","PLP_UNA_H_HelmetB"]]]
] call ace_arsenal_fnc_addDefaultLoadout;


diag_log ("[CVO] [Arsenal_Define] - completed");
