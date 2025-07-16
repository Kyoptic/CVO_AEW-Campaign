/*
*   CVO Custom Supply Crates Define
*
*/

class cvo_csc_crates {
    import baseCrate from cvo_csc_crates;

    class AEW_MedicalCrate: baseCrate {

        displayName = "Medical Supplies";
        scope = 2;

        box_class = "ACE_medicalSupplyCrate_advanced";
        box_empty = "true";

        ace_medical_facility = "true";

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

    class AEW_AntiTank: baseCrate {

        displayName = "Anti Tank Ammunation Crate";
        scope = 2;

        box_class = "Box_RUS_WpsSpecial_arid_F";
        box_empty = "true";

        items[] = {
            { "RPG7_F", 6 },
            { "PSRL1_AT_RF", 2 },
            { "PSRL1_HEAT_RF", 2 },
            { "PSRL1_HE_RF", 2 },
            { "PSRL1_FRAG_RF", 2 }
        };
    };

    class AEW_BasicAmmunation: baseCrate {

        displayName = "General Ammunation Crate";
        scope = 2;

        box_class = "Box_RUS_Support_arid_F";
        box_empty = "true";

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

    class AEW_IEDD_Crate: baseCrate {

        displayName = "Explosive Ordenance Disposal Kit";
        scope = 2;

        box_class = "Box_RUS_Equip_arid_F";
        box_empty = "true";

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
