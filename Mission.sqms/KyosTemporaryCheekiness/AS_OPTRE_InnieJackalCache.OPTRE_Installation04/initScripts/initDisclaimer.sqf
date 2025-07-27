if (hasInterface) then {
    0 fadeRadio 0;
    0 fadeSound 0;

    "disclaimerLayer_Background" cutText ["", "BLACK FADED", -1, true, false];

    [] spawn {

        waitUntil{!(isNil "BIS_fnc_init")};

        sleep 5;

        "disclaimerLayer_Text" cutText  ["<t size='2'>On the fringes of the human-convenat war, human insurgents would continue to trade weapons and supplies to alien pirates, as internal power struggles forced them to look outside conventional methods of acquiring weapons...</t>", "PLAIN", 5, true, true];
        "disclaimerLayer_Sponsor" cutText ["<img size='10' shadow='0' image='Images\armahosts_sponsor.paa'/>", "PLAIN DOWN", 5, true, true];
		
        sleep 3;
		sleep 4;
		3 fadeSound 0.2;
		
		"disclaimerLayer_Text" cutText  ["<t size='2'>The UNSC, at various times, deployed 'kill teams' of ODSTs and Spartans to prevent the flow of weaponry into alien hands, and gather intelligence on covenant weapons technology...</t>", "PLAIN", 2, true, true];
		
		sleep 4;
		sleep 4;
		
		"disclaimerLayer_Text" cutText  ["<t size='2'>Installation 06. Kill Team Orion.</t>", "PLAIN", 1, true, true];
		
		sleep 4;

/*         "disclaimerLayer_Background" cutFadeout 5;
        "disclaimerLayer_Text" cutFadeout 1;
        "disclaimerLayer_Sponsor" cutFadeout 1;

        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [6];
        "dynamicBlur" ppEffectCommit 0;
        "dynamicBlur" ppEffectAdjust [0.0];
        "dynamicBlur" ppEffectCommit 5; */

        5 fadeSound 1;
        5 fadeRadio 1;

        //sleep 5;
        [missionNamespace, "A3A_disclaimerDone", []] call BIS_fnc_callScriptedEventHandler;
    };

    [missionNamespace, "A3A_disclaimerDone", {"dynamicBlur" ppEffectEnable false;}] call BIS_fnc_addScriptedEventHandler;
};