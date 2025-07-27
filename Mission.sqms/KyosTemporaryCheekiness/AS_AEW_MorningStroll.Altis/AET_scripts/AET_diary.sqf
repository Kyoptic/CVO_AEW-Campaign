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
	Main Comms Net: LR 77.0<br/><br/>
	PLT HQ: SR 70.0<br/>
	ALPHA: SR 30.0<br/>
	BRAVO: SR 40.0<br/>
	CHARLIE: SR 50.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - After you finish Obj STARLIGHT, you will be conducting an unsanctioned operation to avenge your fallen comrades. Do not tip off High Command to this unless you are in dire trouble.<br/><br/>
	2 - There will be an investigative element to this operation, you will not be spoon fed the location of the propagandist. Keep an eye out for intel and use your brain. Speak to the local population or to prisoners if you have to. The propagandist is a senior member of Agón - where would you be if you were him?<br/><br/>
	3 - We have managed to convince the quartermaster to issue us some suppressors, but he would not issue us any NVGs for this operation. This shouldn't be an issue, as it will be getting light soon.<br/><br/>
	4 - No further resupply is available to you beyond that which you carry and is in the boxes beside the boats.<br/><br/>
	5- There may be occasions where you need to use ACE drag to move objects that are blocking your path. If in doubt, give it a go.
"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Secure the drug trafficking warehouse at point STARLIGHT. Take photos (screenshots) of any suspicious material.<br/><br/>
	2 - Simultaneously raid POI JOKER, POI BELL and POI PASTOR. It is recommended that you split your squads to ensure no one is alerted. We believe these POIs are Agón outposts that will contain intel on the whereabouts of the propagandist.<br/><br/>
	3 - Locate the residence of the propagandist and take him out. Use whatever methods you need to avenge your brothers.<br/><br/>
	4 - Call for extraction via helicopter."
]];

_player createDiaryRecord ["Diary", ["Mission","
	Raid the drug trafficking warehouse marked as Objective Starlight. Then, conduct a raid on 3 Points of Interest (POIs) that we believe may help us to narrow down the search for the Agón propagandist. Finally, raid his accommodation and take him out before extracting."
]];

_player createDiaryRecord ["Diary", ["Situation","
	After the collapse of the AAF and the brutal Altis government under General Akhanteros, the New Altis Republic has formed. The New Altis Army (NAA) are the nascent armed forces of this government. These soldiers are tasked with protecting Altis’ sovereignty, but many on Altis still do not trust them. Armed civilian militias are widespread, and the NAA must tread a difficult line - securing Altis against organized criminal gangs and the CSAT-backed terrorist arm of the opposing political party - Agón (“The Struggle”).<br/><br/>
	After a raid last week where our platoon uncovered an Agón smuggling port in construction, Agón propaganda has been in overdrive, desperately spinning our every action and mistake to make us look as incompetent and brutal as possible. Incensed by the propaganda, a four man patrol of ours was recently ambushed, disarmed, then beaten to death by an angry Agón-backed mob. The extremely graphic videos were published online by gleeful Agón supporters on the social media platform ‘Y’, formally known as Jitter. We believe this activity was coordinated by an Agón propagandist ‘spin doctor’(*) Farez Petropoulos, a Lebanese immigrant to Altis, who we suspect has ties to CSAT. HQ has given us the order to conduct a raid on a drug trafficking warehouse owned by Agón in an area nearby to the spin doctor’s usual AO. We’ll be using this opportunity to pay Farez a visit, and put a stop to his propagandist activities, permanently.
	<br/><br/>
	(*) A spin doctor is “A person who publicizes deliberately biased interpretations of the words and actions of a public figure, especially a politician, to sway public opinion in a certain direction”<br/><br/>"
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