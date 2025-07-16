/*
* Author: Zorn
* INIT FUNCTION - Establishes Inter Action Points on the Food Dispenser.
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

private _foodTraySources = ["food_tent_container_1","food_tent_container_2","food_tent_container_3","food_tent_container_4"] apply { missionNamespace getVariable [_x, objNull] } select { !isNull _x };

private _state = {
    params ["_target", "_player"];
    [
        10                                      // * 0: Total Time (in game "time" seconds) <NUMBER>
        ,[_target, _player]                     // * 1: Arguments, passed to condition, fail and finish <ARRAY>
        ,{                                      // * 2: On Finish: Code called or STRING raised as event. <CODE, STRING>
            params ["_args", "_elapsedTime", "_totalTime", "_errorCode"];
            _args params ["_target", "_player"];

            _player setVariable ["cvo_foodTent_isEating", true];

            [
                name _player,
                selectRandom [
                    "Tray secured. Find a chair inside the tent to eat. Leaving early means losing your meal.",
                    "Food in hand. Take a seat inside before you dig in. Step outside before finishing and you'll have to start over.",
                    "Rations acquired. Sit down on a chair inside to start eating. Exiting the tent now will spoil your meal.",
                    "Meal in possession. Head to a chair inside the tent to consume it. Don't leave early or your food becomes useless.",
                    "Food obtained. Make sure you're seated inside before you eat. Leaving the tent mid-meal voids your tray.",
                    "Got your food? Cool. Just grab a chair inside and stay put or you'll lose it.",
                    "Food's in hand. Find a seat in the tent and don't wander off or it's gone.",
                    "You've got your tray. Sit down inside if you want to finish it.",
                    "Tray's yours. Make yourself comfy in a chair inside or you're starting again.",
                    "Food collected. Stay seated inside to eat—stepping out means you lose your meal."
                ]
            ] call cvo_common_fnc_subtitles;
            
            private _endTime = CBA_missionTime + 200;

            private _codeToRun = { 
                params [ "_target", "_player" ];


                if (_player isNil "ace_sitting_sittingStatus") exitWith {};

                private _thirst = _player getVariable "acex_field_rations_thirst";
                private _hunger = _player getVariable "acex_field_rations_hunger";

                _thirst = ( _thirst - (2.5 + random 2.5) ) max 0 min 100;
                _hunger = ( _hunger - (2.5 + random 2.5) ) max 0 min 100;

                _player setVariable ["acex_field_rations_thirst", _thirst];
                _player setVariable ["acex_field_rations_hunger", _hunger];


                if isClass (configFile >> "CfgPatches" >> "cigs_core") then {
                    [
                        _player,
                        selectRandom ["cigs_eat_bread_1", "cigs_eat_bread_2", "cigs_eat_bread_3", "cigs_eat_bread_4", "cigs_eat_bread_5"],
                        25
                    ] call CBA_fnc_globalSay3d;
                };

                if ( (_thirst + _hunger) isEqualTo 0 ) then {
                    _handle call CBA_fnc_removePerFrameHandler;
                    [
                        name _player,
                        selectRandom [
                            "That hit the spot. You feel completely recharged now.",
                            "Good meal. You're feeling full and ready to go.",
                            "Well done. Your hunger's finally taken care of.",
                            "That was just what you needed. You feel content.",
                            "Meal's done, and you're feeling solid. No complaints here."
                        ]
                    ] call cvo_common_fnc_subtitles;

                    _player setVariable ["cvo_foodTent_isEating", nil];

                } else {
                    [
                        name _player,
                        selectRandom [
                            "*nom nom nom*",
                            "*munch munch*",
                            "*slurp*",
                            "*chews intensely*",
                            "*crunch crunch*",
                            "*gobble gobble*",
                            "*smacks lips*",
                            "*snarf snarf*",
                            "*gulp*",
                            "*aggressively chewing military-grade stew*",
                            "*chewing with tactical precision*",
                            "*battle-tested bite execution*",
                            "*devours like it's his last meal*",
                            "*slow, suspicious chewing*",
                            "*evaluates flavor profile with disappointment*",
                            "*chews like the food insulted his unit*",
                            "*mouthful mumbling about how it's 'not the worst today'*",
                            "*veteran-level fork control*",
                            "*slurping like it's an MRE smoothie*",
                            "*snacking with visible regret*",
                            "*chews, accepting his fate*",
                            "*methodical bites in complete silence*",
                            "*forced chewing continues*",
                            "*mentally detaches while eating*",
                            "*calculating how many meals until discharge*"
                        ]
                    ] call cvo_common_fnc_subtitles;

                };
            };

            private _parameters = [ _target, _player, _endTime ];
            private _exitCode = {
                params [ "_target", "_player", "_endTime" ];
                [
                    name _player,
                    selectRandom [
                        "You stepped out of the tent. A sand gust redecorated your foodtray. Next time, stay seated in the tent.",
                        "You left your rations unattended. A stray dog with a rank higher than yours claimed them. Sit on a chair if you want to eat.",
                        "You were gone for 15 seconds. Long enough for the flies to form a battalion. Food must be consumed while seated inside the tent.",
                        "Outside the tent, your foodtray made contact with the local ecosystem. Sit down if you're serious about eating.",
                        "You wandered off. A corporal assumed your food was up for grabs. Want to keep it? Stay in your chair.",
                        "You left. The cook saw your foodtray and made it disappear. They don't wait. Sit down or start over.",
                        "Your meal was declared MIA the moment you crossed the tent line. Meals are only secure when consumed seated inside.",
                        "The moment you stepped out, Private Boulos sat down and finished your foodtray. He thought it was his. Sit in a chair next time.",
                        "You exited the chow tent perimeter. In your absence, protocol dictated your food be 'reassigned'. Sit down and stay put if you want to eat.",
                        "You abandoned your post. So did your meatloaf. Meals must be eaten while seated inside the tent."
                    ]
                ] call cvo_common_fnc_subtitles;
                _player setVariable ["cvo_foodTent_isEating", nil];
            };
            private _condition = { 
                params [ "_target", "_player", "_endTime" ];
                _target distance2D _player < 10 && { CBA_missionTime < _endTime }
            };

            [{
                params ["_args", "_handle"];
                _args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];

                if (_parameters call _condition) then {
                    _parameters  call _codeToRun;
                } else {
                    _handle call CBA_fnc_removePerFrameHandler;
                    _parameters call _exitCode;
                };
            },
            2.5,
            [_codeToRun, _parameters, _exitCode, _condition]
            ] call CBA_fnc_addPerFrameHandler;

            
            
        }
        // * 3: On Failure: Code called or STRING raised as event. <CODE, STRING>
        ,{}   
        ,"You're taking the food on a tray..."                     // * 4: Localized Title <STRING> (default: "")
        ,{true}                                                    // * 5: Code to check each frame <CODE> (default: {true})
        ,[]                                                        // * 6: Exceptions for checking ace_common_fnc_canInteractWith <ARRAY> (default: [])
        ,true                                                      // * 7: Create progress bar as dialog, this blocks user input <BOOL> (default: true)

    ] call ace_common_fnc_progressBar;
};

private _aceAction = [
    "CVO_FoodTent_Action"                                           // * 0: Action name <STRING>
    ,"Take a foodtray with your meal from the Food Distribution"    //  * 1: Name of the action shown in the menu <STRING>
    ,"\z\ace\addons\field_rations\ui\icon_hud_hungerstatus.paa"     //  * 2: Icon <STRING> "\A3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa"
    ,_state                                                         //  * 3: Statement <CODE>
    ,{ !(_player getVariable ["cvo_foodTent_isEating", false]) }    //  * 4: Condition <CODE>
//    ,{}                                                           //  * 5: Insert children code <CODE> (Optional)
//    ,_params                                                      //  * 6: Action parameters <ANY> (Optional)
//    ,[0,0,0]                                                      //  * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
//    ,20                                                           //  * 8: Distance <NUMBER> (Optional)
//    ,[false,false,false,false,false]                              //  * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
//    ,{}                                                           //  * 10: Modifier function <CODE> (Optional)
] call ace_interact_menu_fnc_createAction;


{
    [
        _x                    		// * 0: Object the action should be assigned to <OBJECT>
        ,0                         		    // * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
        ,["ACE_MainActions"]             	// * 2: Parent path of the new action <ARRAY> (Example: ["ACE_SelfActions", "ACE_Equipment"])
        ,_aceAction    	         			// * 3: Action <ARRAY>    
    ] call ace_interact_menu_fnc_addActionToObject;
} forEach _foodTraySources;

diag_log format ['[CVO](debug)(fn_foodTent) End of File: %1', ""];
