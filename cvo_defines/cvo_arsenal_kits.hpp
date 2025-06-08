/*
*   CVO Arsenal Define File
*   https://github.com/CVO-Org/CVO-Auxiliary/blob/main/addons/arsenal/readme.md
*   Example File: https://github.com/CVO-Org/CVO-Auxiliary/blob/main/.hemtt/missions/Arsenal.Altis/cvo_arsenal_kits.hpp
*/

class cvo_arsenal_kits
{
    editor_layer_name = "cvo_arsenal_objects";
    object_variable_names[] = {"source"};

    // Imports Base from configFile
    import Base from cvo_arsenal_kits;

    class GreenMagStuff: Base {
        addon_dependency = "greenmag_main";
        class items {
            // @ KYO - IDK if you edited those already or not - just comment out the entries you dont need.
			class greenmag_ammo_556x45_basic_60Rnd;
			class greenmag_ammo_556x45_basic_30Rnd;

			class greenmag_ammo_762x51_basic_60Rnd;
			class greenmag_ammo_762x51_basic_30Rnd;

			class greenmag_ammo_545x39_basic_60Rnd;
			class greenmag_ammo_545x39_basic_30Rnd;

			class greenmag_ammo_762x39_basic_60Rnd;
			class greenmag_ammo_762x39_basic_30Rnd;

			class greenmag_ammo_9x21_basic_60Rnd;
			class greenmag_ammo_9x21_basic_30Rnd;

			class greenmag_ammo_45ACP_basic_30Rnd;
			class greenmag_ammo_45ACP_basic_60Rnd;

			class greenmag_ammo_762x54_basic_60Rnd;
			class greenmag_ammo_762x54_basic_30Rnd;

			class greenmag_item_speedloader;
        };
    };
    
    class Rations: Base {
        class items {
	        class ACE_MRE_BeefStew;
	        class ACE_MRE_ChickenTikkaMasala;
	        class ACE_MRE_ChickenHerbDumplings;
	        class ACE_MRE_CreamChickenSoup;
	        class ACE_MRE_CreamTomatoSoup;
	        class ACE_MRE_LambCurry;
	        class ACE_MRE_MeatballsPasta;
	        class ACE_MRE_SteakVegetables;
        };
    };

    class Binoculars: Base {
        class items {
            class ace_banana;
            class ACE_suture;
            class Nikon_DSLR_HUD;
            class Nikon_DSLR;
            class Binocular;
            class Camera_lxWS;
            class Hate_Smartphone_HUD;
            class ACE_Yardage450;
        };
    };

    class Immersion_Cigs: Base {
        addon_dependency = "cigs_core";
        class items {
            class cigs_Apollo_cigpack;
            class cigs_black_devil_cigpack;
            class cigs_cigars_cigarbox_5;
            class cigs_craven_cigpack;
            class cigs_eckstein_cigpack;
            class cigs_Kosmos_cigpack;
            class cigs_lighter;
            class cigs_pops_poppack;
            class cigs_lucky_strike_cigpack;
            class cigs_matches;
            class cigs_morley_cigpack;
            class cigs_baja_blast_cigpack;
            class cigs_crayons_crayonpack;
            class cigs_Voron_cigpack;
        };
    };

    class Aegis_Armbands: Base {
        class items {
            class Aegis_G_Armband_BLU_F;
            class Aegis_G_Armband_BLU_alt_F;
            class Aegis_NV_G_Armband_Blu_Alt_F;
            class Aegis_NV_G_Armband_Blu_F;
        };
    };

    class Radios_Base: Base {
        class items {
            class ACRE_PRC343;
        };
    };

    class Radios_Leadership: Base {
        role = "Leadership";
        class items {
            class ACRE_PRC148;
        };
    };
    class Radios_RTO: Base {
        role = "RTO";
        class items {
            class ACRE_PRC148;
            class ACRE_PRC77;
            "ACRE_VHF30108SPIKE" 
            "ACRE_VHF30108" 
            "ACRE_VHF30108MAST"
        };
    };



    // Wearables / Gear
    class Base_Uniforms: Base {
        class items {
            //Aegis/Atlas Contractor Uniforms
            class Aegis_U_lxWS_ION_Flanneltna_F;
            class U_lxWS_ION_Casual4;
            class U_lxWS_ION_Casual2;
            class Aegis_U_lxWS_ION_Casualtna_F;
            class U_lxWS_ION_Casual6;
            // class U_I_L_Uniform_01_camo_F;
            class Opf_U_O_S_Uniform_01_sweater_F;
            class U_lxWS_SFIA_deserter;
            // class Atlas_U_CombatUniformNCU_01_mcam_F;
            // class Atlas_U_CombatUniformNCU_02_mcam_F;
            class Atlas_U_B_G_CombatUniform_tshirt_arid;
            class Atlas_U_O_Afghanka_01_grn_F;
            class Atlas_U_O_Afghanka_02_grn_F;
            class Atlas_U_O_Afghanka_01_khk_F;
            class Atlas_U_O_Afghanka_02_khk_F;
            class Atlas_U_I_Afghanka_01_ardi_half_F;
            class Atlas_U_I_Afghanka_02_ardi_half_F;
            class MYR_fat_7;
            class MYR_fat_5;
            class MYR_fat_6;
            class MYR_fat_8;
            class MYR_fat_9;
            class MYR_fat_3;
            class MYR_fat_2;
            class MYR_fat_4;
            class MYR_fat_1;
        };
    };

    class Base_Vests: Base {
        class items {
            class Aegis_V_OCarrierLuchnik_Lite_blk_F;
            class V_PlateCarrier1_blk;
            class V_PlateCarrier1_cbr;
            class V_PlateCarrier2_blk;
            class V_PlateCarrier2_cbr;
            class V_Chestrig_blk;
            class V_HarnessOSpec_blk;
            class Aegis_V_SmershVest_01_blk_F;
            class V_SmershVest_01_F;
            class V_SmershVest_01_olive_F;
            class V_HarnessO_blk;
            class Aegis_V_CarrierRigKBT_01_cqb_black_F;
            class Aegis_V_CarrierRigKBT_01_cqb_cbr_F;
            // Myrmidones Inc Ves;
            class MYR_vest_nato_mixed_1_1;
            class MYR_vest_nato_mixed_1_2;
            class MYR_vest_GA_lite_blk;
            class MYR_vest_GA_rig_blk;
        };
    };

    class Base_Backpacks: Base {
        class items {
        	class ace_gunbag_Tan;
        	class B_LegStrapBag_coyote_F;
        	class B_AssaultPack_cbr;
        	class B_AssaultPackSpec_cbr;
        	class B_Carryall_cbr;
        	class B_FieldPack_cbr;
        	class B_Kitbag_cbr;
        	class Aegis_B_patrolBackpack_cbr_F;
        };
    };

    class Base_Headgear: Base {
        class items {
            class H_HelmetHBK_arid_F;
            class H_HelmetHBK_olive_headset_F;
            class H_HelmetHBK_arid_headset_F;
            class H_HelmetHBK_olive_F;
            class H_Cap_headphones_ion_lxws;
            class lxWS_H_CapB_rvs_blk_ION;
            class Aegis_H_Helmet_Virtus_Headset_rgr_F;
            class Aegis_H_Helmet_Virtus_snd_F;
            class Atlas_H_PASGT_Cover_Olive_F;
            class Atlas_H_PASGT_Cover_Tan_F;
            class H_Beret_Headset_lxWS;
            class H_Booniehat_blk;
            class H_Booniehat_mgrn_hs;
            class H_Cap_blk_CMMG;
            // Myrmidones Stuff
            class MYR_basic_helmet_gray;
            class MYR_basic_helmet_khaki;
            class MYR_cap_blk;
            class MYR_cap_red;
            class MYR_cap;
            class MYR_cap_headphones;
            class MYR_cap_hs;
            class MYR_hel_ech_1;
            class MYR_hel_sf_1;
            class MYR_hel_lgt_1;
            class G_Tactical_Yellow;
            class G_Tactical_Black;
        };
    };

    class Base_Facewear: Base {
        class items {
            //vanilla+ glasses
            class G_Aviator;
            class G_Glasses_black_RF;
            class G_Glasses_white_RF;
            class G_Spectacles;
            class G_Tactical_Clear;
            class G_Tactical_Yellow;
            class G_Lady_Blue;
            class G_Shades_Black;
            class G_Shades_Blue;
            class G_Shades_Green;
            class G_Shades_Red;
            class G_Tactical_Black;
            class G_Shades_Yellowred;
            class G_Shemag_shades;
            class G_Tactical_Camo;
            class G_Squares_Tinted;
            class G_Shemag_tactical;
            //milgear+ glasses
            class milgp_f_tactical_khk;
            class milgp_f_face_shield_shades_BLK;
            class milgp_f_face_shield_shades_CB;
            class milgp_f_face_shield_shades_khk;
            class milgp_f_face_shield_shades_RGR;
            class milgp_f_face_shield_shades_shemagh_BLK;
            class milgp_f_face_shield_shades_shemagh_CB;
            class milgp_f_face_shield_shades_shemagh_khk;
            class milgp_f_face_shield_shades_shemagh_RGR;
            //vanilla goggles
            class G_Balaclava_combat;
            class G_Balaclava_lowprofile;
            class G_Combat;
            class G_Combat_Goggles_blk_F;
            class G_Combat_lxWS;
            class G_Balaclava_light_G_blk_F;
            class G_Lowprofile;
            //milgear goggles
            class milgp_f_face_shield_goggles_BLK;
            class milgp_f_face_shield_goggles_CB;
            class milgp_f_face_shield_goggles_khk;
            class milgp_f_face_shield_goggles_RGR;
            class milgp_f_face_shield_goggles_shemagh_BLK;
            class milgp_f_face_shield_goggles_shemagh_CB;
            class milgp_f_face_shield_goggles_shemagh_khk;
            class milgp_f_face_shield_goggles_shemagh_RGR;
            class milgp_f_goggles_khk;
            //vanilla misc 
            class G_Headset_light;
            class G_Shemag_khk;
            class G_Shemag_oli;
            class G_Shemag_red;
            class G_Shemag_tan;
            class G_Shemag_white;
            class Aegis_G_Condor_EyePro_F;
            class G_Headset_Tactical;
            class G_Headset_Tactical_khk;
            class G_Headset_Tactical_grn;
            class G_Balaclava_blk_lxWS;
            class G_Balaclava_snd_lxWS;
            class G_Headset_lxWS;
            //milgear misc 
            class milgp_f_face_shield_BLK;
            class milgp_f_face_shield_CB;
            class milgp_f_face_shield_khk;
            class milgp_f_face_shield_RGR;
            class milgp_f_face_shield_shemagh_BLK;
            class milgp_f_face_shield_shemagh_CB;
            class milgp_f_face_shield_shemagh_khk;
            class milgp_f_face_shield_shemagh_RGR;
        };
    };

    // Weapons
    class Weapons_Primary_SMGs: Base {
        class items {
            // SMGs
            class JCA_smg_UMP_black_F;
            class JCA_smg_UMP_AFG_black_F;
            class JCA_smg_UMP_VFG_black_F;
            class Aegis_SMG_Gepard_blk_F;
            //SMG Mags
            class Aegis_40Rnd_9x21_Gepard_Mag_F;
            class Aegis_40Rnd_9x21_Gepard_Green_Mag_F;
            class Aegis_20Rnd_9x21_Gepard_Mag_F;
            class JCA_25Rnd_45ACP_UMP_Mag;
            class JCA_25Rnd_45ACP_UMP_Yellow_Mag;
            class JCA_25Rnd_45ACP_UMP_Tracer_Yellow_Mag;
        };
    };

    class Weapons_Primary_AKs: Base {
        class items {
            class Aegis_arifle_AKM74_F;
            class Aegis_arifle_AKM74_GL_F;
            class arifle_AKSM_F;
            class 30Rnd_545x39_Black_Mag_Yellow_F;
            class 30Rnd_545x39_Mag_F;
            class 30Rnd_545x39_Black_Mag_Tracer_Yellow_F;
        };
    };

    class Weapons_Primary_Shotty: Base {
        class items {
	        class sgun_Mp153_black_F;
	        class 4Rnd_12Gauge_Pellets;
	        class 4Rnd_12Gauge_Slug;
        };
    };

    class Weapons_Sidearms_Pistols: Base {
        class items {

	        class acc_flashlight_pistol;
	        class hgun_P07_F;
	        class hgun_G17_F;
	        class 16Rnd_9x21_Mag_v2;


	        class hgun_Pistol_01_F;
	        class 10Rnd_9x21_Mag;
	        class hgun_Rook40_F;
	        class 17Rnd_9x21_Mag;
	        class hgun_G17_black_F;
	        class hgun_Glock19_RF;
        };
    };

    class Weapons_Accessories: Base {
        class items {
            //flashlight 
            class acc_flashlight;
	        //basic optics
	        class optic_Holosight_smg_blk_F;
	        class optic_ACO_grn_desert_RF;
	        //class Aegis_optic_ACOG;
	        class optic_Arco_blk_F;
	        class Aegis_optic_ICO;
	        class optic_ACO_grn;
	        class optic_Aco;
	        //class optic_Hamr;
	        class optic_Holosight_blk_F;
	        class optic_Holosight_arid_F;
	        //class optic_VRCO_RF;
	        class Aegis_optic_ICO;
	        class Aegis_optic_ICO_sand;
	        //class Aegis_optic_ROS;
	        class optic_r1_high_black_sand_lxWS;
	        class optic_r1_high_sand_lxWS;
	        class optic_r1_high_snake_lxWS;
	        class optic_r1_high_lxWS;
	        class optic_r1_low_lxWS;
	        class optic_r1_low_sand_lxWS;
	        class optic_r1_low_snake_lxWS;
	        class saber_light_lxWS;
	        class bipod_01_F_blk;
	        class optic_Aco_smg;
	        class optic_Holosight_smg_blk_F;
	        class Aegis_optic_ROS_SMG;
        };
    };

    class Weapons_Throwables: Base {
        class items {
            class ACE_CTS9;
            class HandGrenade;
            class SmokeShell;
            class SmokeShellBlue;
            class SmokeShellGreen;
            class SmokeShellOrange;
            class SmokeShellPurple;
            class SmokeShellRed;
            class SmokeShellYellow;
            class MiniGrenade;
            class Aegis_HandFlare_Green;
            class Aegis_HandFlare_Red;
            class ACE_HandFlare_Green;
            class ACE_HandFlare_Yellow;
            class ACE_HandFlare_Red;
            class ACE_HandFlare_White;
            class Chemlight_yellow;
            class Chemlight_red;
            class Chemlight_blue;
            class Chemlight_green;
            class ACE_Chemlight_Orange;
            class ACE_Chemlight_White;
            class ACE_Chemlight_HiWhite;
            class ACE_Chemlight_UltraHiOrange;
        };
    };

    // ROLE KITS

    class EOD: Base {
        role = "ExplosiveSpecialist";
        class items {
            class tsp_breach_popper_mag;
            class tsp_breach_popper_auto_mag;
            class ACE_Clacker;
        };
    };
    class MG: Base {
        role = "Machinegunner";
        class items {
            //RPK
            "75Rnd_762x39_Mag_F"
            "Aegis_arifle_RPK74M_F"
            "arifle_RPK_F"
            "Aegis_45Rnd_545x39_Mag_F"
            "Aegis_45Rnd_545x39_Mag_Tracer_F"
        };
    };

    class AntiTank: Base {
        role = "Anti-Tank";
        class items {
		//RPG7
		"launch_RPG7_F"
		"RPG7_F"
		"PSRL1_FRAG_RF"

		//PSRL Fancy RPG
		"launch_PSRL1_PWS_black_RF"
		"launch_PSRL1_PWS_olive_RF"
		"PSRL1_AT_RF"
		"PSRL1_FRAG_RF"
		"PSRL1_HE_RF"
		"PSRL1_HEAT_RF"


        //For later upgrade
		//"Aegis_launch_RPG7M_F" 

        };
    };

    class Marksman: Base {
        role = "Marksman";
        class items {
            // SVD
    		"Aegis_srifle_SVD_f"
    		"Aegis_srifle_SVD_blk_f"
    		"10Rnd_762x54_Mag"
    		"Aegis_10Rnd_762x54_SVD_Red_Mag_F"

    		//ammo
    		"greenmag_ammo_556x45_basic_60Rnd"
    		"greenmag_ammo_556x45_basic_30Rnd"
    		"10Rnd_556x45_AP_Stanag_red_RF"
    		"10Rnd_556x45_AP_Stanag_red_Tan_RF"

    		//accessories
    		"optic_DMS"
    		"optic_SOS"
        };
    };

    class UAV: Base {
        role = "UAV";
        class items {
 
		//AR-2 Darter 
		"ION_UAV_01_backpack_lxWS"

		//GLX grenade launcher and ammo
		"glaunch_GLX_snake_lxWS"
		"glaunch_GLX_lxWS"
		"glaunch_GLX_tan_lxWS"

		"1Rnd_RC40_HE_shell_RF"
		"1Rnd_RC40_shell_RF"

		"1Rnd_RC40_SmokeBlue_shell_RF"
		"1Rnd_RC40_SmokeGreen_shell_RF"
		"1Rnd_RC40_SmokeOrange_shell_RF"
		"1Rnd_RC40_SmokeRed_shell_RF"
		"1Rnd_RC40_SmokeWhite_shell_RF"
		//spectrum device
		"hgun_esd_01_F"
		"acc_esd_01_flashlight"
		"muzzle_antenna_01_f"
		"muzzle_antenna_03_f"
		"muzzle_antenna_02_f"
		//drone terminal
		"B_UavTerminal"
		
		//LR radio
		"ACRE_PRC148"
        };
    };

    class Leadership: Base {
        role = "Leadership";
        class items {

        };
    };
};

"optic_VRCO_RF"
"optic_Hamr"
"ItemcTab"

//Laser Designator
"Rangefinder"

/* 		"Laserdesignator"
"LaserdesignatorGPS_01"
"Laserbatteries" */




















