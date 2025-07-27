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
	HQ Comms Net: LR 77.0<br/>
	JTAC Support Net: LR 76.0 <br/>
	WOLF Intercoms: SR 50.0<br/>
	WOLF 1 Intercoms (optional): SR 51.0<br/>
	WOLF 2 Intercoms (optional): SR 51.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1- Land on Altis<br/>
	2- Search the four marked locations for intel and information regarding the lost UGV.<br/>
	3- Use the intel to locate the UGV<br/>
	4- Destroy the UGV and the classified components by any means necessary<br/>
	5- Extract Safely.<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1- The Red Skull militia is a mix of a (civilian) criminal organization and insurgent operation. Your ROE is green ONLY on ARMED targets. If they have a gun, you can shoot them.<br/>
	2- SENTINAL: Take off manually with the jet drone (use the carrier catapult) and the AL-6 Pelicans to avoid damaging or destroying them.<br/>
	3- <br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Your squad, a NATO SF Unit, callsign WOLF, will be deployed from HMS Liberty, a state of the art destroyer, and our current HQ for drone operations on Altis. Callsign SENTINEL is an experienced drone operator who will be supporting you using a variety of assets<br/><br/>
	Your mission is to raid a nearby Red Skull smuggling operation, to locate intel on the whereabouts of the UGV.<br/><br/>
	Once you have found intel, redeploy to the location rapidly, find it and destroy it with explosives to eliminate the classified comoponents.<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	The Red Skull Militia is a criminal organization with increasing political ambitions. It challenges the AAF on Altis on a regular basis, and there are several no-go areas for AAF forces on Altis. The AAF has forbidden NATO manned combat operations to regain stability in the region, but has accepted support in the form of unmanned ground and aerial vehicles, which it can more easily pretend are its own to bolster its image of competency on the nightly news reels.<br/><br/>
	Despite this, the Red Skull Militia have continued to gain ground against a demoralized AAF, and recently they have captured an intact NATO UGV, using unknown signal jamming technology. This UGV contains vital classified components, including encrypted communications systems, which we believe the Red Skulls are trying to extract to sell off to foreign buyers. We cannot allow this to happen.<br/>"
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