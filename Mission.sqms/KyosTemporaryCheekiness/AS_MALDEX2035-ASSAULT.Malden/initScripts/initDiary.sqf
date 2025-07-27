// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/>
All the creator's of the mods that were used in this mission.<br/>
Anyone who have contributed to the creation of this mission.<br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	Main Comms Net: LR 77.0<br/><br/>
	PLT HQ: SR 50.0<br/>
	ALPHA: SR 51.0<br/>
	BRAVO: SR 52.0<br/>
	CHARLIE: SR 53.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1- If you encounter a sign declaring an area a 'no weapons' area, you are must obey ROE RED. This area is OUT OF BOUNDS of the exercise.<br/>
	2- METO has agreed to allow Italy to observe this MALDEX exercise so that they can provide advice. You may occasionally see Ghost Hawk helicopters flying through the AO. They are out of bounds for the exercise. Avoid collateral damage!<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1- Secure the OpFor outpost at Pic de Feas<br/>
	2- Locate two weapons caches in the mountains. There will be one in the eastern zone and another in the western zone marked<br/>
	3- Assault then secure the OPFOR HQ. (the target building will have the AAF flag on it)<br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	For this exercise, you will practice platoon assault operations, search and destroy, and compound clearing in Malden's mountainous terrain.<br/><br/>
	Focus on executing maneuvers (e.g. suppression, bounding, fire and maneuver, etc) at the platoon level, with each squad acting as the basic maneuver unit (instead of a fireteam or buddy team)."
]];

_player createDiaryRecord ["Diary", ["Situation","
	Malden's armed forces (MAF) and the Altis Armed Forces (AAF) are part of METO - the MEditerranean Treaty Organization. This alliance of Mediterranean micro nations offers a joint security pact to ensure their sovereignty against larger powers. To promote METO joint operability and improve their training, METO holds an annual Malden Exercise - MALDEX. During these, METO members carry out simulated oppositional scenarios, where each side takes a specific role in a scenario with a focus on specific capabilities. For MALDEX 2035, Malden's Armed Forces wish to test some light infantry skills in mountainous terrain, in preparation for peacekeeping operations in Takistan. The AAF has agreed to play as 'OPFOR' for this exercise, and so will be using insurgent tactics and capabilities.<br/>"
]];

// Briefing [For different sides]
// Copy the content of the "West" case to other cases as needed and comment/delete the previous briefing code

/*

switch (side _player) do {

	case west:
	{
		_player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};
	case east:
	{};
	case independent:
	{};
	case civilian:
	{};
};

*/