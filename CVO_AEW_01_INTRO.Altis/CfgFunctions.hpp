class CfgFunctions {

    class common {
        class common {
            class cba_events { preInit = 1;};

            class toggleLayerAI {};
            class TFARjamRadios {};
        };
    };

    class cutscenes {
        class cutscenes {
            class cba_events { preInit = 1;};

            class skipday {};

            class disclaimer { postInit = 1; }; 
        };
    };

    class init {
		class init {
			
            class diary { postInit = 1; };
			class babel_init { postInit = 1; };
			
            class antiFlubber { postInit = 1; };    // Antiflubber, controlled by description.ext: enableAntiFlubber = 1;
		};
    };

    class kyo {
        class kyo {
            class misc { /* postInit = 1; */ };          // This is Kyo's InitMiscScripts.sqf - ether run via postInit = 1; or simply execute code `[] call kyo_fnc_misc;`
        };
    };
};
