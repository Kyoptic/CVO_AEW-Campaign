/*
* Author: Zorn
* Init stuff to disable the 
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


// Initial disable on Mission Start / Load In
player enableInfoPanelComponent ["left", "MineDetectorDisplay", false];
player enableInfoPanelComponent ["right", "MineDetectorDisplay", false];


// Re-Disable after respawn.
player addEventHandler ["Respawn", {
    player enableInfoPanelComponent ["left", "MineDetectorDisplay", false];
    player enableInfoPanelComponent ["right", "MineDetectorDisplay", false];
}];
