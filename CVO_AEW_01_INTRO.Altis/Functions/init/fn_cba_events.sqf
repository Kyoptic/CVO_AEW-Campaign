/*
* Author: Zorn
* Function to register cba events
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


// fn_toggleLayerAI CBA Event
[
    "common_eh_toggleAIfeature",
    {
        params ["_units", "_mode", "_features"];

        // Recursive Function:
        // On individual Owner: toggle ai features per units - one unit per frame

        private _recursiveCode = {
            params ["_units", "_mode", "_features", "_recursiveCode"];

            private _unit = _units deleteAt 0;
            {
                switch (_mode) do {
                    case true:  { _unit  enableAI _feature };
                    case false: { _unit disableAI _feature };
                };
            } forEach _features;

            if (_units isEqualTo []) exitWith {};
            [_recursiveCode, [_units, _mode, _features, _recursiveCode]] call CBA_fnc_execNextFrame;
        };

        [_units, _mode, _features,_recursiveCode] call _recursiveCode;

    }
] call CBA_fnc_addEventHandler;
