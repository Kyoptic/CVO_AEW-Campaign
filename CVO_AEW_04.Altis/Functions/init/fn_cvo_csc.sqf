/*
* Author: Zorn
* Function to run on Mission Post Init to Establish all Custom Supply Crates Access Points
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

// Create Access Point on Laptop in Base
[
    missionNamespace getVariable ["cvo_csc_accessPoint_base", objNull],
    "DEFAULT",           // Crates
    ["AEW_Spawn"],       // Delivery Modes
    ["AEW_tarp"]         // Destinations
] call cvo_csc_fnc_createAccessPoint;


/*
// Create Mobile Access Point

Mobile Request Point - Maybe Comms Offroad?

[
    missionNamespace getVariable ["cvo_deploy_commsOffroad", objNull],
    "DEFAULT",                      // Crates
    ["AEW_Airdrop_Myrmidon"],       // Delivery Modes
    ["AEW_mapClick"]                // Destinations
] call cvo_csc_fnc_createAccessPoint;

*/
