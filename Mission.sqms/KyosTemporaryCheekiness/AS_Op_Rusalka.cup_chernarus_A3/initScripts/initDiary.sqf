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
	1 - You do not need to ‘blow up’ every supply truck at the lumber yard. Only cause significant damage to most of them.
	<br/><br/>
	2 - Ensure you have an exfil plan once you have secured the castle. The situation is likely to get difficult quickly.
	<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Covertly set charges on the bridge north of the lumberyard.
	<br/><br/>

	2 - Assault the lumberyard and destroy or disable all of the supply vehicles (they need only to be disabled, not blown up).
 <br/><br/>

	3 - Secure the AAA positions at the Castle and hold it until HQ gives you the order to withdraw, to draw in additional QRF.
<br/><br/>4 - Exfil West."
]];

_player createDiaryRecord ["Diary", ["Mission","
	First, set explosive charges on the bridge north of the convoy to prevent its escape to the front. Next, move to the lumber camp and destroy the supply convoy that’s paused there on its way to the front line. Finally, move north and destroy the AAA positions covering this valley. Exfil from the AO to the West.
	<br/><br/>Your platoon is field testing a set of experimental Heckler & Koch weapons we have received recently. Report your findings on them to High Command at debrief."
]];

_player createDiaryRecord ["Diary", ["Situation","
	After a long winter marked by positional fighting and occasional brief ceasefires, we have resumed the offensive and broken through the front lines of the Chedaki forces holding the peninsula of Chernogorsk. They still hold a large swathe of territory here, but now is the time to seize the initiative and push deep into their supply lines.
	<br/><br/>

	Your platoon has been searching for opportunities to slip through the enemy lines, and recently has been able to exploit one. After a few minor raids and skirmishes, you have received intel that a civilian CDF informant in your AO reported the presence of a large supply convoy that has paused at a lumber camp nearby. We cannot strike it with aircraft due to a AAA position to the North, but your platoon is ideally situated to take advantage of this opportunity.
	<br/>"
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