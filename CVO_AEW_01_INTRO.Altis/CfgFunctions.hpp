class CfgFunctions {
    class FFPP
    {
        class Punishment
        {
            class punishment_dataGet {};
            class punishment_dataNamespace {};
            class punishment_dataRem {};
            class punishment_dataSet {};
            class punishment_FF_addEH {};
            class punishment_FF {};
            class punishment {};
        };
        class UI
        {
            class customHint {};
        };
        class Utility
        {
            class getAdmin {};
            class log {};
        };
    };

    class HR
    {
        class Create
        {
            class LGAirstrike {};
        };

        class Players
        {
            class dressUp {};
        };

        class UI
        {
            class customHint {};
        };

        class Utility
        {
            class ValidateObjects {}; // Could be useful to keep
        };
    };

    class A3A{
        class AI{
            class disableLayerAI {}; // e.g. a3a_fnc_disableLayerAI - this is a global variable 'containing' the code that is within the function. Ergo can call this global var to run the function by using e.g.        call a3a_fnc_disableLayerAI // keep
            class enableLayerAI {};  // kèép
        };
    };

    class mission {
		class init {
			class babel_init { postInit = 1; };
			class diary {};
		};
    };
};
