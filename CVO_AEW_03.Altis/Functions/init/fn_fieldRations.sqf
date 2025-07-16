if (!hasInterface) exitWith {};

#define SAVE_INTERVAL 60

diag_log format ['[CVO](debug)(fn_fieldRations) _this: %1', _this];

persistance_fnc_saveToProfile = {
    private _hunger = player getVariable ["acex_field_rations_hunger", 0];
    private _thirst = player getVariable ["acex_field_rations_thirst", 0];

    profileNamespace setVariable ["cvo_aew_food_persistance_hunger", _hunger];
    profileNamespace setVariable ["cvo_aew_food_persistance_thirst", _thirst];
    saveProfileNamespace;
    diag_log format ['[CVO](debug)(Save-to-profile) _hunger: %1 - _thirst: %2', _hunger , _thirst];
};

persistance_fnc_loadFromProfile = {
    private _hunger = profileNamespace getVariable "cvo_aew_food_persistance_hunger";
    private _thirst = profileNamespace getVariable "cvo_aew_food_persistance_thirst";

    if (!isNil "_hunger") then { player setVariable ["acex_field_rations_hunger", _hunger]; };
    if (!isNil "_thirst") then { player setVariable ["acex_field_rations_thirst", _thirst]; };

    diag_log format ['[CVO](debug)(Load-from-profile) _hunger: %1 - _thirst: %2', _hunger , _thirst];
};

persistance_fnc_saveToGVAR = {
    private _hunger = player getVariable ["acex_field_rations_hunger", nil];
    private _thirst = player getVariable ["acex_field_rations_thirst", nil];

    missionNamespace setVariable ["player_hunger", _hunger];
    missionNamespace setVariable ["player_thrist", _thirst];

    diag_log format ['[CVO](debug)(save-to-GVAR) _hunger: %1 - _thirst: %2', _hunger , _thirst];
};

persistance_fnc_loadFromGVAR = {

    private _hunger = missionNamespace getVariable ["player_hunger", nil];
    private _thirst = missionNamespace getVariable ["player_thrist", nil];
    if (!isNil "_hunger") then { player setVariable ["acex_field_rations_hunger", _hunger]; };
    if (!isNil "_thirst") then { player setVariable ["acex_field_rations_thirst", _thirst]; };

    diag_log format ['[CVO](debug)(load-from-GVAR) _hunger: %1 - _thirst: %2', _hunger , _thirst];
};

private _statement = {

    diag_log format ['[CVO](debug)(fn_fieldRations) WUAE diag_frameNo: %1', diag_frameNo];

    call init_fnc_foodTent;

    call persistance_fnc_loadFromProfile;

    //// Establish Eventhandler to maintain Hunger/Thrist throughout respawn
    // Saves Hunger/Thrist throughout Respawn
    player addEventHandler ["Killed", {
        call persistance_fnc_saveToGVAR;
        diag_log format ['[CVO](debug)(fn_fieldRations) Killed EH diag_frameNo: %1', diag_frameNo];
    }];

    player addEventHandler ["Respawn", {
        call persistance_fnc_loadFromGVAR;
        diag_log format ['[CVO](debug)(fn_fieldRations) Respawn EH diag_frameNo: %1', diag_frameNo];
    }];


    
    //// Save Hunger/Thirst every 10 minutes on Profile Namespace
    [
        {
            [
                {
                    call persistance_fnc_saveToProfile;
                    diag_log '[CVO](debug)(fn_fieldRations) 10 Minute Save Interval';
                },
                SAVE_INTERVAL
            ] call CBA_fnc_addPerFrameHandler;
        },
        [],
        SAVE_INTERVAL
    ] call CBA_fnc_waitAndExecute;

    //// Save Hunger/Thirst on Mission End
    addMissionEventHandler ["Ended", {

        call persistance_fnc_saveToProfile;
        diag_log '[CVO](debug)(fn_fieldRations) End Of Mission';
    }];
    
};

[{ !isNil "acex_field_rations_enabled" }, _statement, [], 120] call CBA_fnc_waitUntilAndExecute;

diag_log format ['[CVO](debug)(fn_fieldRations) EOF diag_frameNo: %1', diag_frameNo];
