/*=================================================*
	CVO_ARSENAL_DEFINE
*=================================================*

Here, you define the Available Equipment for the CVO Arsenal
It is seperated in 3 Parts

##################
1. BASE KIT - This is Available for Everyone
##################


Variable Name: CVO_A_BASE = [];

For easier reading it is suggested to compartmentalise
and append the individual Groups to CVO_A_BASE



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

// #####################################################
// ###### CODE - DONT CHANGE
// #####################################################

if (isServer) then {
	_array = (getMissionLayerEntities EDITOR_LAYER_NAME)#0;
	[_array] remoteExecCall ["cvo_arsenal_fnc_addArsenalInteraction", [0,-2] select isDedicated, true];
};

if (!hasInterface) exitWith {};

// #####################################################
// ###### DEFINE BASE KIT HERE - AVAILABLE FOR EVERYONE
// #####################################################

CVO_A_BASE = [];

// ###### Baseline Equipment ###### 
// The Following can be mostly left as default


// How to add Equipment if a certain Addon is Loaded - here, GreenMag
if (isClass (configFile >> "CfgPatches" >> "greenmag_main")) then {

		CVO_A_BASE append [
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
CVO_A_BASE append [
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

CVO_A_BASE append _rations;

CVO_A_BASE append [
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

	"ItemMap",
	"ItemWatch",
	"ItemCompass"];

// Binoculars
CVO_A_BASE append [
	"Old_Camera_Color_HUD",
	"Old_Camera_Color",
	"Binocular",
	"gm_fero51_oli"
	];

// NVGs
CVO_A_BASE append [	
	//actual nvgs
	//"ACE_NVG_Gen4",
	//"ACE_NVG_Gen3_WP",
	//armbands
	// "Aegis_NV_G_Armband_Blu_Alt_F",
	// "Aegis_NV_G_Armband_Blu_F",
	//cigs and lollipop
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"cigs_Apollo_cigpack",
	"cigs_cigars_cigarbox_5",
	"ace_flags_red",
	"cigs_Kosmos_cigpack",
	"cigs_lighter",
	"cigs_lucky_strike_cigpack",
	"AUR_Rappel_Gear",
	"AUR_Rappel_Rope_50",
	"tsp_sling"
];


// Rappeling Rope 
CVO_A_BASE append [
	"AUR_Rappel_Rope_70",
	"AUR_Rappel_Rope_50",
	"AUR_Rappel_Rope_30",
	"AUR_Rappel_Rope_20",
	"AUR_Rappel_Rope_10",
	"AUR_Rappel_Gear"];

// Radios
CVO_A_BASE append  ["ACRE_PRC343", "ACRE_PRC152"];

// ###### Wearables ###### 

// Uniforms 
CVO_A_BASE append [
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
	//
	//// Aegis/Atlas Contractor Uniforms
	// "Aegis_U_lxWS_ION_Flanneltna_F",
	// "U_lxWS_ION_Casual4",
	// "U_lxWS_ION_Casual2",
	// "Aegis_U_lxWS_ION_Casualtna_F",
	// "U_lxWS_ION_Casual6",
	//"U_I_L_Uniform_01_camo_F",
	// "Opf_U_O_S_Uniform_01_sweater_F",
	// "U_lxWS_SFIA_deserter",
	//"Atlas_U_CombatUniformNCU_01_mcam_F",
	//"Atlas_U_CombatUniformNCU_02_mcam_F",
	// "Atlas_U_B_G_CombatUniform_tshirt_arid",
	// "Atlas_U_O_Afghanka_01_grn_F",
	// "Atlas_U_O_Afghanka_02_grn_F",
	// "Atlas_U_O_Afghanka_01_khk_F",
	// "Atlas_U_O_Afghanka_02_khk_F",
	// "Atlas_U_I_Afghanka_01_ardi_half_F",
	// "Atlas_U_I_Afghanka_02_ardi_half_F"
	//GM Snow - Op Polynya 
	"gm_ge_army_uniform_soldier_parka_80_win",
	"gm_pl_army_uniform_soldier_80_win",
	"gm_pl_army_uniform_soldier_autumn_80_moro",
	"gm_xx_army_uniform_fighter_04_wdl",
	"gm_xx_army_uniform_fighter_04_grn"
	];

// Vests
CVO_A_BASE append [
	
	"gm_ge_army_vest_80_demolition",
	"gm_ge_army_vest_80_leader",
	"gm_ge_army_vest_80_machinegunner",
	"gm_gc_army_vest_80_lmg_str",
	"gm_pl_army_vest_80_at_gry",
	"gm_pl_army_vest_80_leader_gry",
	"gm_pl_army_vest_80_crew_gry",
	"gm_pl_army_vest_80_mg_gry",
	"gm_pl_army_vest_80_marksman_gry",
	"gm_pl_army_vest_80_rifleman_gry",
	"gm_pl_army_vest_80_rifleman_smg_gry"
];

// Backpacks
CVO_A_BASE append [
	"gm_pl_army_backpack_80_oli",
	"gm_ge_army_backpack_80_oli",
	"gm_ge_army_backpack_medic_80_oli",
	"gm_gc_army_backpack_80_lmg_str",
	"gm_ge_backpack_sem35_oli",
	"gm_gc_backpack_r105m_brn",
	"gm_pl_army_backpack_at_80_gry",
	"gm_ge_backpack_satchel_80_san",
	"gm_ge_backpack_satchel_80_blk",
	"gm_ge_army_backpack_90_blk",
	"gm_ge_army_backpack_90_oli",
	"gm_ge_army_backpack_90_cover_win"
	];

// Headgear
CVO_A_BASE append [
	"gm_gc_headgear_beret_blk",
	"gm_gc_headgear_beret_officer_blk",
	"gm_gc_headgear_beret_officer_str",
	"gm_pl_headgear_beret_blk",
	"gm_pl_headgear_beret_blk_empty",
	"gm_pl_headgear_beret_bdx",
	"gm_ge_headgear_hat_80_gry",
	"gm_gc_headgear_fjh_model4_oli",
	"gm_gc_headgear_fjh_model4_wht",
	"gm_ge_headgear_psh77_oli",
	"gm_ge_bgs_headgear_psh77_cover_smp",
	"gm_pl_army_headgear_wz63_oli",
	"gm_pl_army_headgear_wz63_net_oli",
	"gm_pl_headgear_wz67_cover_win",
	"gm_pl_army_headgear_wz67_net_oli",
	"gm_gc_bgs_headgear_hat_80_gry",
	"gm_gc_army_headgear_hat_80_grn",
	"gm_ge_headgear_winterhat_80_oli",
	"gm_ge_headgear_hat_beanie_blk",
	"gm_ge_headgear_hat_beanie_crew_blk"
	];

// Facewear
CVO_A_BASE append [
	//vanilla+ glasses
	"gm_xx_facewear_scarf_01_str",
	"gm_xx_facewear_scarf_01_wht",
	"gm_ge_facewear_stormhood_blk",
	"gm_ge_facewear_stormhood_dustglasses_blk",
	"gm_ge_facewear_sunglasses",
	"gm_xx_facewear_scarf_01_gry",
	"gm_xx_facewear_scarf_01_pt1",
	"gm_xx_facewear_scarf_01_pt3",
	"gm_ge_facewear_glacierglasses",
	"gm_ge_facewear_dustglasses"
	];

// ###### WEAPONS - MAIN ###### 

// Rifles
CVO_A_BASE append  [
	// AKs and AK Carbines
	"gm_mpiaks74nk_brn",
	"gm_mpikms72k_blk",
	"gm_mpikms72ksd_brn",
	"gm_mpikms72ksd_blk",
	"gm_mp2a1_blk",
	"gm_mpiaks74nk_brn",
	"gm_mpiaks74nk_blk",
	"gm_akm_pallad_wud",
	//Marksman Rifle
	"gm_svd_wud",
	// SMGs & Handguns
	"gm_pm63_blk",
	"gm_pm63_handgun_blk",
	"gm_wz78_blk",
	"gm_pimb_blk",
	// MMG
	"gm_hmgpkm_prp",
	//LMG
	"gm_lmgrpk_blk",
	"gm_lmgrpk74n_blk",
	
	// RPG & HGL
	"gm_rpg7_wud",
	"gm_rpg7_prp",
	"gm_9k32m_oli",
	"gm_pallad_d_brn",
	// Ammo for launchers
	"gm_1Rnd_72mm_he_9m32m",
	"gm_1Rnd_40mm_heat_pg7v_rpg7",
	"gm_1Rnd_40mm_heat_pg7vl_rpg7",
	
	//SMG Mags
	"gm_15Rnd_9x18mm_B_pst_pm63_blk",
	"gm_25Rnd_9x18mm_B_pst_pm63_blk",
	"gm_1Rnd_265mm_flare_single_wht_gc",
	"gm_1Rnd_265mm_flare_single_red_gc",
	"gm_1Rnd_265mm_flare_multi_red_gc",
	"gm_1Rnd_265mm_flare_single_grn_gc",
	"gm_8Rnd_9x18mm_B_pst_pm_blk",
	// Rifle Mags
	"gm_45Rnd_545x39mm_B_7N6_ak74_prp",
	"gm_45Rnd_545x39mm_B_T_7T3_ak74_blk",
	"gm_30Rnd_545x39mm_B_7N6_ak74_blk",
	"gm_30Rnd_545x39mm_B_7N6_ak74_org",
	"gm_30Rnd_545x39mm_B_T_7T3_ak74_blk",
	"gm_30Rnd_545x39mm_B_T_7T3_ak74_org",
	"gm_75Rnd_762x39mm_B_57N231_ak47_blk",
	"gm_75Rnd_762x39mm_BSD_57N231U_ak47_blk",
	"gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk",
	"gm_30Rnd_762x39mm_B_57N231_mpikm_blk",
	"gm_30Rnd_762x39mm_BSD_57N231U_mpikm_blk",
	"gm_30Rnd_762x39mm_B_T_57N231P_mpikm_blk",
	"",
	"gm_100Rnd_762x54mmR_B_T_7t2_pk_grn",
	"gm_100Rnd_762x54mm_API_b32_pk_grn",
	
	"1Rnd_HE_Grenade_shell",
	"1Rnd_HEDP_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"ACE_40mm_Flare_white",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",

	//flashlight 
	"gm_flashlightp2_wht_akkhandguard_blu",
	"gm_flashlightp2_wht_akhandguard_blu",
	//suppressors
	"gm_suppressor_tgpp_9mm_blk",
	"gm_suppressor_safloryt_blk",
	"gm_suppressor_m10_9mm_blk",
	"gm_suppressor_pbs1_762mm_blk",
	"gm_suppressor_tgpv_762mm_blk",
	"gm_bayonet_6x3_wud",
	
	//basic optics
	"gm_pgo7v_blk",
	"gm_zvn64_ak",
	"gm_nspu_dovetail_gry",
	"gm_pka_dovetail_gry",
	"gm_pso6x36_1_dovetail_gry",
	"gm_zvn64_rpk",
	"gm_zvn64_akk"
	];

//// Pistols
// CVO_A_BASE append [
	// "acc_flashlight_pistol",
	// "hgun_Rook40_F",
	// "hgun_P07_F",
	// "hgun_G17_F",
	// "16Rnd_9x21_Mag_v2",
	// "hgun_Rook40_F",
	// "17Rnd_9x21_Mag"
	// ];

// Handgrenades and Throwables
CVO_A_BASE append   [

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
CVO_A_BASE append [
	
	];

/* // CBRN KIT
CVO_A_BASE append [
	"U_C_CBRN_Suit_01_Blue_F", 
	"G_AirPurifyingRespirator_01_F",
	"G_RegulatorMask_F", 
	"B_SCBA_01_F"]; */


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
		"ACE_VMM3","ACE_VMH3", 
		"ACE_wirecutter", "ToolKit", 
		"ACE_Fortify", "ACE_DefusalKit",

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
		/* "arifle_SLR_GL_lxWS",
		"arifle_SLR_V_GL_lxWS",
		"1Rnd_50mm_Smoke_lxWS",
		"1Rnd_58mm_AT_lxWS",

		// Single Use
		"launch_NLAW_F" */
		], 
	{}]],
	["Marksman", [[
		/* //Mk 14 EBR
		"srifle_EBR_blk_lxWS",
		"srifle_EBR_snake_lxWS",
		"20Rnd_762x51_Mag_blk_lxWS",
		"20Rnd_762x51_Mag_snake_lxWS",
		"ace_20rnd_762x51_mag_tracer",

		//HADES H6 rifle
		"srifle_h6_blk_rf",
		"srifle_h6_tan_rf",		
		"suppressor_l_lxWS",
		"suppressor_l_sand_lxWS",		
		"bipod_02_F_arid",
		"bipod_01_F_snd",
		"bipod_02_F_tan",
		"bipod_03_F_blk",
		"bipod_02_F_blk",
		"bipod_01_F_blk",

		//ammo
		"greenmag_ammo_556x45_basic_60Rnd",
		"greenmag_ammo_556x45_basic_30Rnd",
		"10Rnd_556x45_AP_Stanag_red_RF",
		"10Rnd_556x45_AP_Stanag_red_Tan_RF",

		//accessories
		"optic_DMS",
		"optic_DMS_snake_lxWS",
		"suppressor_h_lxWS",
		"suppressor_h_sand_lxWS",
		"suppressor_h_snake_lxWS", */
		
		//Utility
		"ACE_Tripod",
		"ACE_RangeCard",
		"Rangefinder"
		], 
	{}]],
	["Drone Operator", [
		[
		/* //AR-2 Darter 
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
		"1Rnd_RC40_SmokeWhite_shell_RF", */
		//spectrum device
		"hgun_esd_01_F",
		"acc_esd_01_flashlight",
		"muzzle_antenna_01_f",
		"muzzle_antenna_03_f",
		"muzzle_antenna_02_f",
		/* //drone terminal
		"B_UavTerminal", */
		
		//LR radio
		"ACRE_PRC148"],
	{}]],
	["Interpreter", [[
		/* "arifle_SLR_Para_lxWS",
		"arifle_SLR_Para_snake_lxWS"		 */
		],
	{}]],
	["Officer", [
		[
		/* //FAL para 
		"arifle_SLR_Para_lxWS",
		"arifle_SLR_Para_snake_lxWS",

		//FAL GL and Smoke-RifleGrenade
		"arifle_SLR_GL_lxWS",
		"arifle_SLR_V_GL_lxWS",
		"1Rnd_50mm_Smoke_lxWS",


		//officer uniform
		"U_lxWS_UN_Camo1",
		"lxWS_H_Beret_Colonel",

		//officer tech
		"optic_VRCO_RF",
		"optic_VRCO_tan_RF",
		"optic_Hamr",
		"optic_Hamr_snake_lxWS",
		"optic_Hamr_sand_lxWS",
		"ItemcTab", */

		//Laser Designator
		"Rangefinder",

		"Laserdesignator",
		"LaserdesignatorGPS_01",
		"Laserbatteries",

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
	["76561198090236234", 	["Recon", 			[],	{[]}	]],
	["76561198147307775", 	["Clone", 			[],	{[]}	]] 	
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
