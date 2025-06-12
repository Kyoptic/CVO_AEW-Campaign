class CfgFunctions {

    class common {
        class common {
            class cba_events { preInit = 1;};

            class toggleLayerAI {};
            class TFARjamRadios {};

            class setCharacter {};
        };
    };

    class cutscenes {
        class cutscenes {
            class cba_events { preInit = 1;};

            class skipday {};

            class disclaimer {};

            class cutscene_1 {};
            class cutscene_1_init {};
        };
    };

    class init {
		class init {

			class babel { postInit = 1; };
            class antiFlubber { postInit = 1; };    // Antiflubber, controlled by description.ext: enableAntiFlubber = 1;

		};
    };

    class diary {
        class diary {

            class 0_init { postInit = 1; };

            class 1_forces {};
            class 1_personalities {};
            class 1_situation {};
            class 2_mission {};
            class 3_execution {};
            class 4_administration {};
            class 4_missionLog {};
            class 4_additionals {};
            class 5_signals {};
            class 5_command {};

            class misc {};
        };
    };

    class kyo {
        class kyo {
            class misc { /* postInit = 1; */ };          // This is Kyo's InitMiscScripts.sqf - ether run via postInit = 1; or simply execute code `[] call kyo_fnc_misc;`
        };
    };
};
