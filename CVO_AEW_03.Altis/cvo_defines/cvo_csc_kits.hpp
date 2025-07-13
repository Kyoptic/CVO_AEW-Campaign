/*
*   CVO Custom Supply Crates Define
*
*   TBA
*
*/

// This file serves as an example for a missionConfig based setup of CSC for a mission.
// Insert the following into your description.ext
// "true" and "false" will be converted into booleans

// "DefaultEntry" is a special case and will define the "Defaults" for all properties.

class cvo_csc_kits
{
    class DefaultEntry
    {
        // The following properties are the existing defaults.
        items[] = {};
        backpacks[] = {};

        zeus_enabled = "true";

        //// Modes
        // "AIRDROP" will start the airdrop feature. Target Pos will be defined through "airdrop_targetMode"/"airdrop_targetMode_zeus"
        // "POS" will take spawn_pos [2/3D or Object] and spawn the crate on that position
        // "REL" will spawn the crate relative to its size behind the provided object
        zeus_mode = "AIRDROP";
        normal_mode = "REL";    // {13764.6,18912.3,0}
        box_class = "C_supplyCrate_F";
        box_empty = "true";


        // can be fixed position[pos2d/3d] or object (helipad, tarp, sth like that) or "REL" which will put the box relative behind the source object
        // only use one of the options below:
        // spawn_pos = "REL";         // "REL" as a magic key
        // spawn_pos = "myHeliPad";   // Variable Name as a String
        spawn_pos[] = { 0, 0, 0 };

        ace_medical_facility = "false";
        ace_medical_vehicle = "false";

        ace_repair_facility = "false";
        ace_repair_vehicle = "false";

        ace_rearm_source = "false";
        ace_rearm_source_value = 50;

        ace_refuel_source = "false";
        ace_refuel_source_value = 50;
        ace_refuel_source_nozzlePos[] = { 0, 0, 0 };

        ace_drag_canDrag = "true";
        ace_drag_relPOS[] = { 0, 1.5, 0 };
        ace_drag_dir = 0;
        ace_drag_ignoreWeight = "true";

        ace_carry_canCarry = "true";
        ace_carry_relPOS[] = { 0, 1, 1 };
        ace_carry_dir = 0;
        ace_carry_ignoreWeight = "false";

        ace_cargo_setSpace = 0;
        ace_cargo_setSize = "DEFAULT";

        ace_cargo_add_spareWheels = 0;
        ace_cargo_add_jerrycans = 0;
        ace_cargo_add_tracks = 0;

        airdrop_targetMode = "MAPCLICK";        // MAPCLICK, FIXED (spawn_pos), PLAYER, TARGET

        airdrop_targetMode_zeus = "MAPCLICK";

        airframe_side = "CIV";                  // String version: "WEST" "EAST" "GUER" "CIV"
        airframe_protected = "true";
        airframe_class = "MYR_B_ORCA_F";

        airdrop_pos_start[] = { 0, 0, 0 };
        airdrop_pos_end = "RETURN";

        airdrop_alt = 100;
        airdrop_alt_forced = "true";

        airdrop_flyInHeightASL[] = { 35, 35, 35 };

        airdrop_attachSmoke = "true";
        airdrop_class_smoke = "SmokeShellOrange"; // CfgMagazines

        parachute_class = "B_Parachute_02_F";

        parachute_attachStrobe = "true";
        parachute_strobe_class = "ACE_IR_Strobe_Effect";
    };

    class myMedicalCrate: DefaultEntry
    {
        name = "Medical Supply Crate";
        box_class = "ACE_medicalSupplyCrate_advanced";
        ace_medical_facility = "true";

        //link_objects[] = { "source" };                   // only used for config defined templates - to be linked to objects.
        //link_classes[] = { "B_Slingload_01_Ammo_F" };     // only used for config defined templates - to be linked to classes.

        items[] = {
            // { "ACE_suture", 100 },
            { "ACE_surgicalKit", 1 },
            { "ACE_painkillers", 5 },
            { "ACE_bodyBag", 5 },
            { "ACE_personalAidKit", 10 },
            { "ACE_salineIV", 10 },
            { "ACE_salineIV_500", 20 },
            { "ACE_fieldDressing",  40 },
            { "ACE_packingBandage", 40 },
            { "ACE_elasticBandage", 50 },
            { "ACE_Morphine", 5 },
            { "ACE_Epinephrine", 10 }
        };
    };

    class AntiTankAmmunation: DefaultEntry
    {
        name = "Anti Tank Ammunation Crate";
        box_class = "Box_RUS_WpsSpecial_arid_F";
    
        //link_objects[] = { "source" };                   // only used for config defined templates - to be linked to objects.
        //link_classes[] = { "B_Slingload_01_Ammo_F" };     // only used for config defined templates - to be linked to classes.

        items[] = {
            { "RPG7_F", 6 },
            { "PSRL1_AT_RF", 2 },
            { "PSRL1_HEAT_RF", 2 },
            { "PSRL1_HE_RF", 2 },
            { "PSRL1_FRAG_RF", 2 }
        };
    };

    class BasicAmmunation: DefaultEntry
    {
        name = "General Ammunation Crate";
        box_class = "Box_RUS_Support_arid_F";
    
        //link_objects[] = { "source" };                   // only used for config defined templates - to be linked to objects.
        //link_classes[] = { "B_Slingload_01_Ammo_F" };     // only used for config defined templates - to be linked to classes.

        items[] = {
            { "HandGrenade", 8 },
            { "SmokeShell", 8 },
            { "SmokeShellPurple", 2 },
            { "SmokeShellBlue", 2 },
            { "1Rnd_HE_Grenade_shell", 20 },
            { "30Rnd_545x39_Black_Mag_Yellow_F", 10},
            { "30Rnd_545x39_Black_Mag_Tracer_Yellow_F", 5},
            { "Aegis_45Rnd_545x39_Mag_F", 5},
            { "Aegis_45Rnd_545x39_Mag_Tracer_F", 5},
            { "JCA_25Rnd_45ACP_UMP_Mag", 5},
            { "4Rnd_12Gauge_Pellets", 10},
            { "4Rnd_12Gauge_Slug", 10},
            { "ace_10rnd_762x54_tracer_mag", 5},
            { "17Rnd_9x21_Mag", 2},
            { "10Rnd_9x21_Mag", 2},
            { "greenmag_ammo_545x39_basic_60Rnd", 20},
            { "greenmag_ammo_762x54_basic_30Rnd", 10},
            { "greenmag_ammo_9x19_basic_60Rnd", 5},
            { "greenmag_ammo_9x21_basic_60Rnd", 5},
            { "greenmag_ammo_45ACP_basic_60Rnd", 10}
        };
    };

    class EODCrate: DefaultEntry
    {
        name = "Explosive Ordenance Disposal Kit";
        box_class = "Box_RUS_Equip_arid_F";
    
        //link_objects[] = { "source" };                   // only used for config defined templates - to be linked to objects.
        //link_classes[] = { "B_Slingload_01_Ammo_F" };     // only used for config defined templates - to be linked to classes.

        items[] = {
            { "ACE_VMH3", 4 },
            { "DemoCharge_Remote_Mag", 4 },
            { "V_EOD_olive_F", 1 },
            { "ACE_wirecutter", 1 },
            { "ACE_MapTools", 1 },
            { "ace_marker_flags_red", 10},
            { "ace_marker_flags_orange", 10},
            { "ace_marker_flags_green", 10},
            { "ace_marker_flags_blue", 5},
            { "ACE_EntrenchingTool", 1},
            { "ACE_Clacker", 1},
            { "ACE_DefusalKit", 2},
            { "H_PASGT_neckprot_black_F", 1},
            { "G_Combat_Goggles_blk_F", 1},
            { "cigs_Voron_cig0", 2}
        };
    };
};
