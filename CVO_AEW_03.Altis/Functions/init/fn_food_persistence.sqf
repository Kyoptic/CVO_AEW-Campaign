if (!hasInterface) exitWith {};

// Define Interval to Store current Hunger/Thirst to ProfileNamespace.
#define SAVE_INTERVAL 600
// Will only restore upto RESTORED_THRESHOLD to avoid someone stuck in an deathloop.
#define RESTORED_THRESHOLD 70
// Define "Campaign-Tag" to avoid cross-contamination of stored data
#define CAMPAIGN "AEW"

// Functions
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
    private _hunger = player getVariable "acex_field_rations_hunger";
    private _thirst = player getVariable "acex_field_rations_thirst";

    missionNamespace setVariable ["cvo_player_hunger", _hunger];
    missionNamespace setVariable ["cvo_player_thrist", _thirst];
};

persistance_fnc_loadFromGVAR = {
    private _hunger = missionNamespace getVariable "cvo_player_hunger";
    private _thirst = missionNamespace getVariable "cvo_player_thrist";
    if (!isNil "_hunger") then { player setVariable ["acex_field_rations_hunger", _hunger min RESTORED_THRESHOLD]; };
    if (!isNil "_thirst") then { player setVariable ["acex_field_rations_thirst", _thirst min RESTORED_THRESHOLD]; };
};

private _statement = {
    // Check and Load Stored Data
    call persistance_fnc_loadFromProfile;

    // Establish Eventhandler
    player addEventHandler ["Killed",  persistance_fnc_saveToGVAR ];
    player addEventHandler ["Respawn", persistance_fnc_loadFromGVAR ];
    addMissionEventHandler ["Ended",   persistance_fnc_saveToProfile ];

    // Init Interval Loop
    [ { [ persistance_fnc_saveToProfile, SAVE_INTERVAL ] call CBA_fnc_addPerFrameHandler; }, [], SAVE_INTERVAL ] call CBA_fnc_waitAndExecute;
};

[{ !isNil "acex_field_rations_enabled" }, _statement, [], 120] call CBA_fnc_waitUntilAndExecute;
