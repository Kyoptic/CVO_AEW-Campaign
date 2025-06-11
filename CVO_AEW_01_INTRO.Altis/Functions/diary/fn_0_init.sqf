/*
* Author: Zorn
* Function to initialize all the Map Diary shenanigans.
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



// rm default diary entry
player removeDiarySubject "Diary";
// Add credits to the CBA Entry.



// Briefing Category
// https://www.wikiwand.com/en/articles/Five_paragraph_order
["I. Situation", "CVO", " "] call cvo_intel_fnc_createDiaryCategory;
[] call diary_fnc_1_forces;
[] call diary_fnc_1_personalities;
[] call diary_fnc_1_situation;

["II. Mission", "CVO", " "] call cvo_intel_fnc_createDiaryCategory;
[] call diary_fnc_2_mission;


["III. Execution", "CVO", " "] call cvo_intel_fnc_createDiaryCategory;
[] call diary_fnc_3_execution;


["IV. Admin/Logistics", "CVO", " "] call cvo_intel_fnc_createDiaryCategory;
[] call diary_fnc_4_Administration;
[] call diary_fnc_4_missionLog;
[] call diary_fnc_4_additionals;


["V. Command/Signal", "CVO", " "] call cvo_intel_fnc_createDiaryCategory;
[] call diary_fnc_5_signals;
[] call diary_fnc_5_command;



// Empty Trailing Spacer
[""] call cvo_intel_fnc_createDiaryCategory;
