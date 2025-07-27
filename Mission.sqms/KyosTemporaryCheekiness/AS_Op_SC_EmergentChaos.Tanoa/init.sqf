// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

// Enables antiFlubber script for all players
[] call AET_fnc_antiFlubber;

//MONSOON SCRIPT
if ((!isServer) && (player != player)) then {waitUntil {player == player};};
[] execVM "briefing.sqf";

// Monsoon
[100,7840,false,true,true,true,true,1] execvm "AL_monsoon\al_monsoon.sqf";