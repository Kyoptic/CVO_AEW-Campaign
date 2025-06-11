/*
* Author: Zorn
* Function to apply a Character (Loadout + Identity) to a unit.
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

params [
    [ "_character", "",         [""]     ],
    [ "_unit",     ACE_player, [objNull] ]
];


private _loadout = switch (_character) do {
    case "spike_gillian": { [[[],[],[],["MYR_fat_9",[["iedd_item_notebook",1],["ACE_DefusalKit",1]]],["V_Rangemaster_belt_blk",[]],[],"MYR_cap","G_Shemag_white",["Hate_Smartphone_HUD","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""]],[]] };
    default { [] };
};

if (_loadout isEqualTo []) exitWith { diag_log format ['[CVO](debug)(fn_setCharacter) character not found: %1', _character]; false };

_unit setIdentity _character;
[ _unit, _loadout, true ] call CBA_fnc_setLoadout;

true
