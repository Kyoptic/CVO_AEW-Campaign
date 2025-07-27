/*---------------------------------------------------------------------------
Title
	The code in this file is executed locally when player joins mission.
	For more info see https://community.bistudio.com/wiki/Event_Scripts#initPlayerLocal.sqf
	
	Parameters:
	0. OBJECT: the player's object
	1. BOOL: if the player Joins In Progress, the parameter returns true, otherwise false
---------------------------------------------------------------------------*/
params ["_player", "_jip"];

#include "AET_scripts\AET_initPlayerLocal.sqf";
#include "AET_scripts\AET_diary.sqf";
#include "AET_scripts\AET_disclaimer.sqf";
if (!didJIP) then {
	#include "AET_scripts\AET_equipment.sqf";
};

//insert is as into initPlayerLocal.sqf
"ColorCorrections" ppEffectEnable true;  
"ColorCorrections" ppEffectAdjust [0.9, 0.90, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 0.6], [0.15, 0.5, 0.5, 1]];  
"ColorCorrections" ppEffectCommit 0;