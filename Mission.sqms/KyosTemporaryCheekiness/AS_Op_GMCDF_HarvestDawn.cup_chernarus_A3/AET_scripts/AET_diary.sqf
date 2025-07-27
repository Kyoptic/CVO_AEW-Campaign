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
	MAIN COMMMS NET: SR 77.0<br/>
	PLT HQ SR: 70.0<br/>
	ALPHA SR: 60.0<br/>
	BRAVO SR: 50.0<br/>
	CHARLIE SR: 40.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - Your BMPs use Manual Command Line of Sight (MCLOS) missiles. These must be steered manually. Ensure sensible MCLOS keybinds are set up in controls -> addon controls-> ace weapons -> MCLOS up/down/left/right. They are challenging to use. Practice is recommended, and salvo fire (from several vehicles) should be used to get reliable hits.
<br/><br/>
	2 - 1BAT HQ can supply 1x replacement vehicles for each element.<br/><br/>
	3 - Plt CO’s BRDM can carry RRR boxes. Make sure to load them.<br/><br/>
	4 - Plt CO and Plt Sgt can call for artillery fire using support menu,<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Advance North East and reconnoitre movements of the 52nd Guard Independent Tank Battalion. Report the best route for advance (ASR JAVELIN or ASR LANCE) to 1BAT HQ.
<br/><br/>
	2 - Destroy enemy picket forces and reconnaissance troops you encounter.<br/><br/>
	3 - (Optional) Call for artillery fire on targets of opportunity, such as static enemy troop concentrations.<br/><br/>
	4 - Once you have selected the best route, secure the towns along ASR Javelin or ASR Lance, ensuring no ATGM positions remain.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	The CDF’s 2nd Armored Division 1BAT has secured a railway route to Zelenogorsk, bypassing the valleys where Grozovian local forces currently hold the line.  Your armoured reconnaissance platoon will be the Spearhead of 1BAT’s advance into the Grozovian heartlands. As the rest of 1BAT unloads their tanks, you will advance ahead of the line to conduct reconnaissance by force and identify elements of the 52nd Guards Independent Tank Battalion which we believe are passing through this AO. Once you have secured a route, the rest of 1BAT will follow."
]];

_player createDiaryRecord ["Diary", ["Situation","
	The cold war has ended. The old order is over. Amongst the fractured ex-Soviet client states of Chernarus and Grozovia, however, tensions have only risen as the might of the Soviet Union no longer keeps the peace between these two proud people.
	<br/><br/>
	Along the principle frontline, our war with Grozovia has become a terrible stalemate, with neither side able to make any gains against a quagmire of defensive positions, trenches and minefields. In response, CDF High Command has devised a new strategy - an ambitious amphibious assault into the heart of Grozovia.
	<br/><br/>
	Early this morning, the CDF 1st Marines Regiment and CDF 2nd Armoured Battalion made surprise landings on the coastline of Grozovia, rapidly securing key ports and offloading supplies. Local Grozovian forces were quickly overwhelmed on the coastlines, but have proved tenacious enemies to dislodge from the valleys further inland, stalling our progress. SIGINT indicates the Grozovian 52nd Guards Motor Rifle Division is en route to reinforce the frontline. We must intercept them before they reach the valleys.
	<br/><br/>"
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