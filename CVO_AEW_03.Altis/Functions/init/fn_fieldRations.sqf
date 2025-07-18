if (!hasInterface) exitWith {};

// Define Interval to Store current Hunger/Thirst to ProfileNamespace.
#define SAVE_INTERVAL 600
// Will only restore upto RESTORED_THRESHOLD to avoid someone stuck in an deathloop.
#define RESTORED_THRESHOLD 70
// Define "Campaign-Tag" to avoid cross-contamination of stored data
#define CAMPAIGN "AEW"


diag_log format ['[CVO](debug)(fn_fieldRations) _this: %1', _this];

persistance_fnc_saveToProfile = {
    private _hunger = player getVariable ["acex_field_rations_hunger", 0];
    private _thirst = player getVariable ["acex_field_rations_thirst", 0];

    profileNamespace setVariable [format ["cvo_%1_food_persistance_hunger", CAMPAIGN], _hunger];
    profileNamespace setVariable [format ["cvo_%1_food_persistance_thirst", CAMPAIGN], _thirst];
    saveProfileNamespace;
};

persistance_fnc_loadFromProfile = {
    private _hunger = profileNamespace getVariable format ["cvo_%1_food_persistance_hunger", CAMPAIGN];
    private _thirst = profileNamespace getVariable format ["cvo_%1_food_persistance_thirst", CAMPAIGN];

    if (!isNil "_hunger") then { player setVariable ["acex_field_rations_hunger", _hunger min RESTORED_THRESHOLD]; };
    if (!isNil "_thirst") then { player setVariable ["acex_field_rations_thirst", _thirst min RESTORED_THRESHOLD]; };
};

persistance_fnc_saveToGVAR = {
    private _hunger = player getVariable ["acex_field_rations_hunger", nil];
    private _thirst = player getVariable ["acex_field_rations_thirst", nil];

    missionNamespace setVariable ["cvo_player_hunger", _hunger];
    missionNamespace setVariable ["cvo_player_thrist", _thirst];
};

persistance_fnc_loadFromGVAR = {
    private _hunger = missionNamespace getVariable ["cvo_player_hunger", nil];
    private _thirst = missionNamespace getVariable ["cvo_player_thrist", nil];
    if (!isNil "_hunger") then { player setVariable ["acex_field_rations_hunger", _hunger min RESTORED_THRESHOLD]; };
    if (!isNil "_thirst") then { player setVariable ["acex_field_rations_thirst", _thirst min RESTORED_THRESHOLD]; };
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


    
    //// Save Hunger/Thirst every Interval on Profile Namespace
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
