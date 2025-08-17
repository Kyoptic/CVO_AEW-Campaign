/*
* Author: Zorn
* Function to initialize the CVO Deploy System
* Needs to be run on each player
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

if !(hasInterface) exitWith {};

//// Departures
[cvo_deploy_hq_tent] call cvo_deploy_fnc_departure;
[cvo_deploy_food_tent] call cvo_deploy_fnc_departure;

//// Destinations
[cvo_deploy_commsOffroad] call cvo_deploy_fnc_destination;
