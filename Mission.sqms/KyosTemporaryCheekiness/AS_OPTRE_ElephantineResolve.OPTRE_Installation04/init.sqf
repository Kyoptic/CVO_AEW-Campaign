// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

if (hasinterface) then {
    1 faderadio 0;

    titleCut ["", "BLACK FADED", 999];

        [] Spawn {
        waitUntil{!(isNil "BIS_fnc_init")};
		
        0 fadesound 0;
		playSound "crash";
        sleep 2;
        titletext ["<t size='2'> En Route to Firebase Indigo, Installation 04 - Alpha Halo.</t>","PLAIN",2, true, true];
		
		//P3 playmove "Acts_UnconsciousStandUp_part1";

        "dynamicBlur" ppEffectEnable true;   
        "dynamicBlur" ppEffectAdjust [6];   
        "dynamicBlur" ppEffectCommit 0;     
        "dynamicBlur" ppEffectAdjust [0.0];  
        "dynamicBlur" ppEffectCommit 5;  
        titleCut ["", "BLACK IN", 6];
        1 fadesound 0.5;
		sleep 5;
		playMusic "AutumnSuite";
    };
    1 faderadio 1;
};

[] execVM "Scripts\Credits.sqf";

