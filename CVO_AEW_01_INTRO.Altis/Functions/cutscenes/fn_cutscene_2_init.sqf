/*
* Author: Zorn
* [Description]
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

diag_log format ['[CVO](debug)(fn_cutscene_2_init) _this: %1', _this];

// ONLY ON THE SERVER
if (isServer) then {
    // REPLACES THE TRIGGER
    // WAIT UNTIL CIV IS DEAD/DELETED, THEN EXECUTES THE CUTSCENE 1 MAIN FUCNTION ON THE SERVER
    private _triggerCiv_scene2 = missionNamespace getVariable ["trigger_man_skipDay", objNull];  // <- replace "civ_trigger_1" with the correct variable <- TODO
    [
        {
            params [["_obj", "", [objNull]]];
            isNull _obj || { !alive _obj }
        },                
        { missionNamespace setVariable ["kyo_trigger_cutscene_2", true, true]; },                
        [_triggerCiv_scene2]
    ] call CBA_fnc_waitUntilAndExecute;

    // Starts the cutscene
    [{ missionNamespace getVariable ["kyo_trigger_cutscene_2", false] }, { [] call cutscenes_fnc_cutscene_2; }] call CBA_fnc_waitUntilAndExecute;

};

// Only Players
if (hasInterface) then {
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
};
