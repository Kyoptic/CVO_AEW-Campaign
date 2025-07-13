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

[cvo_deploy_whiteboard] call cvo_deploy_fnc_departure;
[cvo_deploy_commsOffroad] call cvo_deploy_fnc_destination;
