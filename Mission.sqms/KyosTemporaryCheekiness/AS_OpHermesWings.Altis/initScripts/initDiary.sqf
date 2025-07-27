// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/>
Dmitry Yuri from the Zeus Community for his antiFlubber script - smoke GL sticks (to kids)!<br/>
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
	1- Ammo boxes near each vehicle contain 4 demo blocks. Use them to destroy any SHORAD installations, EW equipment or other significant military hardware caches you find.<br/>
	2- HUMINT indicates possible construction work ongoing in the valley. Keep an eye out for new buildings.<br/>
	3- No further resupply is available to you beyond that which is in your vehicles."
]];

_player createDiaryRecord ["Diary", ["Execution","
	1- Anti-government protests are ongoing in Athira. UN and Police forces have secured the area, follow the black marked route through Athira. Do not deviate from the route.<br/>
	2- Touch base with the Civilian Militia in Infestiona, see if they have any intel. They are, nominally, friendly to the NAA.<br/>
	3- Reconnoiter the valley NNW of Infestiona to discover what Agón is protecting there. ID then engage any forces that initiate contact with you.<br/>
	4- Execute EXTREME RESTRAINT at all times. Maintain ROE yellow. Allegiance with the Agón political party is not inherently a crime, and we cannot afford to appear tyrannical in Agón’s propaganda."
]];

_player createDiaryRecord ["Diary", ["Mission","
	Reconnoiter the marked valley. Locate the EW equipment that has been causing us issues and any SHORAD facilities you can. Discover why Agón has established a presence in this area. Destroy any military hardware caches you encounter.<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	After the collapse of the AAF and the brutal Altis government under Arkantheros, the New Altis Republic has formed. The New Altis Army (NAA) are the nascent armed forces of this government. These soldiers are tasked with protecting Altis’ sovereignty, but many on Altis still do not trust them. Armed civilian militias are widespread, and the NAA must tread a difficult line - securing Altis against organized criminal gangs and the CSAT backed terrorist arm of the opposing political party - Agón (“The Struggle”).<br/><br/>

Over the past few weeks we have noted increased insurgent activity - presumably Agón backed forces - in North West Altis. These insurgents appear to have been supplied with Short Ranged Air Defence (SHORAD) systems and some form of advanced Electronic Warfare (EW) capabilities, and our regular drone and rotary wing reconnaissance flights over the area have been stopped as a result. We need you to punch into this area and find out what is going on.
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