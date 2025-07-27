// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/><br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/><br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/><br/>
SkippieDippie from the Antistasi Event Team and 24th CHORNI VORON for all the functions/script and help he provided the event team with.<br/><br/>
Dmitry Yuri for the antiFlubber script.<br> <br/>
All the creator's of the mods that were used in this mission.<br/><br/>
Anyone who have contributed to the creation of this mission.<br/><br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	Main Communication Net: LR 77.0<br/><br/>
	JTAC - AIR Comms: LR 76.0<br/><br/>
	Plt HQ SR: 70.0<br/><br/>
	Alpha SR: 60.0<br/><br/>
	Bravo SR: 50.0<br/><br/>
	HECATE SR: 100.0<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - The route up through Orekastro to its castle is regularly patrolled and known to be safe. A journalist is known to be conducting an interview in the area this morning.<br/><br/>
	2 - Many objects can be ace-interacted to move them out of the way (ace drag). You may need to do this to clear a path along the road, or access certain areas in buildings. However, beware of hidden IEDs and traps when doing so.<br/><br/>
	3 - Pilots may ONLY use unguided munitions - Mk82 bombs, Hydra rockets, or gun pods. Any combination of these bombs and rockets is allowed (All bombs? All rockets? Your choice.)<br/><br/>
	4 - Jets are Quick Reaction Aircraft (QRA). They can only deploy once friendly units are in contact. A text message and alarm will sound to notify them when this occurs, but may take 10-15 mins after players step-off.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Clear the road between Oreokastro castle and the Abdera Helicopter Base of all obstacles and IEDs.
<br/><br/>
	2- Search for hidden weapons caches along the area known as Smuggler’s Cove.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Your platoon, supported by an IFV and, if necessary, a pair of Quick Reaction Aircraft (QRA) will conduct a sweep along a cliffside route along the north west coast of Altis. Your primary objective is to locate and clear any obstacles or checkpoints the FIA has placed along the road. As a secondary objective, search the area known as 'Smugglers Cove' for FIA weapons caches.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	After the successful pacification of Oreokastro, the FIA’s resolve in North West Altis has been significantly diminished. However, over the last few months they have slowly begun to rebuild their strength, and continue to scrape out an existence by establishing illegal roadblocks and checkpoints, as well as conducting smuggling operations along the craggy northern coast. <br/><br/>For the safety of our citizens, we must stop them. AAF High Command has committed us to OPERATION ARGONAUT - a counterinsurgency operation focused on route clearance and weapon cache raids to ensure freedom of movement for the citizens of Altis."
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