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


// ONLY ON THE SERVER
if (isServer) then {
    // REPLACES THE TRIGGER
    // WAIT UNTIL CIV IS DEAD/DELETED, THEN EXECUTES THE CUTSCENE 1 MAIN FUCNTION ON THE SERVER
    private _triggerCiv_scene2 = missionNamespace getVariable ["trigger_man_skipDay", objNull];  // <- replace "civ_trigger_1" with the correct variable <- TODO
    [
        {
            params [["_obj", "", [objNull]]];
            !alive _obj || isNull _obj
        },                
        { missionNamespace setVariable ["kyo_trigger_cutscene_2", true, true]; },                
        [_triggerCiv_scene1]
    ] call CBA_fnc_waitUntilAndExecute;

    // Starts the cutscene
    [{ missionNamespace getVariable ["kyo_trigger_cutscene_2", false] }, { [] call cutscenes_fnc_skipday; }] call CBA_fnc_waitUntilAndExecute;

};
