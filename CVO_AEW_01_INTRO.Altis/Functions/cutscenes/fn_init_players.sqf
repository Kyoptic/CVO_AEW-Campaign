// EVENTS ON PLAYERS
if !(hasInterface) exitWith {};

// CUTSCENE 1
[
    "CUTSCENE_BLACK", // eventname
    {
        params ["_mode", "_duration", ["_muteSounds", true, [true]]];

        switch (_mode) do {
            case "TOBLACK": {   ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackOut; };
            case "FROMBLACK": { ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackIn; };
        };

        if (_muteSounds) then {
            switch (_mode) do {
                case "TOBLACK": {
                    ["cvo_cutscene", 0, true, _duration] call ace_common_fnc_setHearingCapability;
                    _duration fadeSound 0;
                    _duration fadeRadio 0;
                };
                case "FROMBLACK": {
                    _duration = _duration * 2;
                    ["cvo_cutscene", 1, false, _duration] call ace_common_fnc_setHearingCapability;
                    _duration fadeSound 1;
                    _duration fadeRadio 1;
                };
            };
        };
    }
] call CBA_fnc_addEventHandler;




// TELEPORTS EACH PLAYER INDIVIDUALLY, LOCALLY ON THEIR MASHINE, INTO THE HELI
[
    "CUTSCENE_PLAYER_INTO_HELI", // eventname
    {
        params ["_vic", "_index"];
        moveOut player;

        player moveInCargo [_vic, _index, false];
        player assignAsCargoIndex [_vic, _index];
    }

] call CBA_fnc_addEventHandler;


// CUTSCENE 2
[
    "cut2_scene0",
    {
        playMusic "LeadTrack01_F_EPA";
    }
] call CBA_fnc_addEventHandler;

[
    "cut2_scene1",
    {
        [true] call ace_common_fnc_setVolume;
        "disclaimerLayer_Background" cutText ["", "BLACK", 8, true, false];
    }
] call CBA_fnc_addEventHandler;

[
    "cut2_scene2",
    {
        "disclaimerLayer_Text" cutText  ["<t size='2'> Later that day...</t>", "PLAIN", 5, true, true];
        "disclaimerLayer_Sponsor" cutText ["<img size='10' shadow='0' image='data\voron_sponsor.paa'/>", "PLAIN DOWN", 5, true, true];
    }
] call CBA_fnc_addEventHandler;

[
    "cut2_scene3",
    {
        "disclaimerLayer_Background" cutFadeout 3;
        "disclaimerLayer_Text" cutFadeout 1;
        "disclaimerLayer_Sponsor" cutFadeout 1;
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [6];
        "dynamicBlur" ppEffectCommit 0;
        "dynamicBlur" ppEffectAdjust [0.0];
        "dynamicBlur" ppEffectCommit 5;
    }
] call CBA_fnc_addEventHandler;

[
    "cut2_scene4",
    {
        [true] call ace_common_fnc_setVolume;
    }
] call CBA_fnc_addEventHandler;

[
    "cut2_scene5",
    {
        "disclaimerLayer_Background" cutText ["", "BLACKIN", 8, true, false];
    }
] call CBA_fnc_addEventHandler;
