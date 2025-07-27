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
	Plt HQ: SR 70.0<br/><br/>
	Alpha: SR 60.0<br/><br/>
	Bravo: SR 50.0<br/><br/>
	Charlie: SR 40.0<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["RPG Guide", "<img image='Images\RPGGuide.jpg' width='400' height='336'/>"], taskNull, "", false];

_player createDiaryRecord ["Diary", ["Additional","
	1- You have two E-tools per squad in the ammo boxes. Assign them as necessary.<br/><br/>
	2- There is a spare KORD Heavy Machine Gun, it can be transported by the Plt Mechanics vehicle.<br/><br/>
	3- You may be able to drag objects with ace interact if they are blocking your path.<br/><br/>	"
]];
// 4- RPG Guide <img image='Images\RPGGuide.jpg' width='800' height='736'/>
_player createDiaryRecord ["Diary", ["Execution","
	1- Defeat the enemy vanguard and Secure Polana<br/><br/>
	2- Establish defensive positions covering the valley north of Polana. POI DOLA and POI PERUN have been identified as two possible candidates for defensive positions.<br/><br/>
	3- Defend against the enemy counterattack long enough for the main force to break through to the airfield.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Your platoon has been tasked with creating a diversionary attack to draw in enemy forces so that the main thrust of our assault can proceed unimpeded. We have detected a small unit of reconnaissance troops, likely the vanguard for a larger unit, in Polana. Destroy this vanguard and secure Polana, then hold the valley north of Polana against the enemy counterattack to draw in units away from our main assault. <br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	A brutal winter has stalled much of the fighting in the Chernarussian civil war. Across the frontline, mobile warfare has been replaced with artillery duels and positional fighting. As spring thaws have arrived, so has the mud, and as of yet there is no end in sight to the stalemate at the frontline. The Chernarussian Defence Force has slowly been licking its wounds and raising new units as the winter goes on, and CDF High Command has decided to conduct a risky amphibious assault to open a new front on the Chedaki flank.<br/><br/>
	Earlier this morning, CDF 1st Marine Battalion conducted amphibious landings in Elektrozavodsk and Chernogorsk unopposed, and now the 1st Marine Battalion is pushing the enemy further inland. Chedaki forces are scrambling for a response, but have begun to draw forces away from their principal front line and towards this incursion. An ad-hoc armour battalion is now en route to block this force. <br/><br/>"
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