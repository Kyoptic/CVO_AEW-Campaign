/*
* Author: Zorn
* Function to handle the Communication Plan
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

[
    "Signals"
    ,"Squad Nets: AN/PRC-343 PRR"
    ,""
    ,""
    ,"
Block 1 Channel  1: Raven 1-1 - Infantry
<br/>Block 1 Channel  2: Raven 1-2 - Infantry
<br/>Block 1 Channel  3: Raven 1-3 - Infantry
<br/>
<br/>Block 1 Channel  6: Raven 1-6 - Platoon Command
"
] call cvo_diary_fnc_setEntry;


[
    "Signals"
    ,"Command Nets: AN/PRC-148"
    ,""
    ,""
    ,"
Group 01 Channel 1: Ground Command
"
] call cvo_diary_fnc_setEntry;


// <br/> Group 01 Channel 8: JTAC NET
// <br/> Group 01 Channel 9: AIR NET

// <br/> Block 1 Channel  1: 1-1 - Infantry
// <br/> Block 1 Channel  2: 1-2 - Infantry
// <br/> Block 1 Channel  3: 1-3 - Infantry
// <br/> Block 1 Channel  4: 1-4 - Infantry
// <br/> Block 1 Channel  5: 1-5 - Recon
// <br/> Block 1 Channel  6: 1-6 - Platoon Command
// <br/> Block 1 Channel  7: 1-7 - Support
// <br/> Block 1 Channel  8: 1-8 - GRANIT - Fire Support
// <br/> Block 1 Channel  9: 1-9 - KODIAK - Air Transport
// <br/> Block 1 Channel 10: 1-0 - Company Command