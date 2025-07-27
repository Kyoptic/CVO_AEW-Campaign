/*
*   CVO Custom Supply Crates Define
*
*   TBA
*
*/

class cvo_csc_delivery_modes {

    import base_spawn from cvo_csc_delivery_modes;
    class AEW_Spawn: base_spawn {
        displayName = "Retrieve from Storage";
        description = "Will spawn the crates at the provided destination.";

        maxCrates = 5;

        scope = 2;        
    };

    import base_airdrop from cvo_csc_delivery_modes;
    class AEW_Airdrop_Myrmidon: base_airdrop {
        displayName = "Airdrop: Myrmidon Helicopter";
        description = "A Myrmidon Helicopter will airdrop the desired crates.";

        maxCrates = 2;

        scope = 2;

        class parameters {
            airframe_side = "CIV";                  // String version: "WEST" "EAST" "GUER" "CIV"
            airframe_protected = "true";
            airframe_class = "MYR_B_ORCA_F";

            pos_start[] = { 15000, 14000, 150 };    // Gulf of Pyrgos
            pos_end = "RETURN";

            airdrop_alt = 150;
            airdrop_alt_forced = "true";
            airdrop_speedLimit = 150;

            airdrop_flyInHeightASL[] = { 50, 50, 50 };


            parachute_class = "B_Parachute_02_F";

            // CfgVehicles or CfgAmmo
            parachute_class_strobe = "ACE_IR_Strobe_Effect";
            parachute_class_chemlight = "Chemlight_yellow";
            parachute_class_smoke = "SmokeShellOrange";
        };
    };


    class AEW_Airdrop_IDAP: base_airdrop {
        displayName = "Airdrop: IDAP Helicopter";
        description = "A IDAP Helicopter will airdrop the desired crates.";

        maxCrates = 3;

        scope = 1;

        class parameters {
            airframe_side = "CIV";                  // String version: "WEST" "EAST" "GUER" "CIV"
            airframe_protected = "true";
            airframe_class = "C_IDAP_Heli_Transport_02_F";

            pos_start[] = { 0, 30000, 250 };    // Top Left Corner
            pos_end = "RETURN";

            airdrop_alt = 250;
            airdrop_alt_forced = "true";
            airdrop_speedLimit = "LIMITED";


            parachute_class = "B_Parachute_02_F";

            // CfgVehicles or CfgAmmo
            parachute_class_strobe = "ACE_IR_Strobe_Effect";
            parachute_class_chemlight = "Chemlight_yellow";
            parachute_class_smoke = "JCA_GrenadeAmmo_HandFlare_Green";
        };
    };

    class AEW_Airdrop_IDAP_plane: base_airdrop {
        displayName = "Airdrop: IDAP Plane";
        description = "A IDAP Cargoplane will airdrop the desired crates.";

        maxCrates = 5;

        scope = 1;

        class parameters {
            airframe_side = "CIV";                  // String version: "WEST" "EAST" "GUER" "CIV"
            airframe_protected = "true";
            airframe_class = "Aegis_C_IDAP_Plane_Transport_01_civil_F";

            pos_start[] = { 0, 30000, 500 };    // Top Left Corner
            pos_end = "RETURN";

            airdrop_alt = 500;
            airdrop_alt_forced = "true";
            airdrop_speedLimit = "LIMITED";

            parachute_class = "B_Parachute_02_F";

            // CfgVehicles or CfgAmmo
            parachute_class_strobe = "ACE_IR_Strobe_Effect";
            parachute_class_chemlight = "Chemlight_yellow";
            parachute_class_smoke = "JCA_GrenadeAmmo_HandFlare_Green";
        };
    };
};
