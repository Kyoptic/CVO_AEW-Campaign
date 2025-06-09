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

// _player createDiaryRecord ["Diary", ["Signals","
	// Main Comms Net: LR 77.0<br/><br/>
	// PLT HQ: SR 50.0<br/>
	// ALPHA: SR 51.0<br/>
	// BRAVO: SR 52.0<br/>
	// CHARLIE: SR 53.0<br/>"
// ]];

_player createDiaryRecord ["Diary", ["ORBAT and TTPs","
	Your platoon is organised with:<br/>
	A 4 man HQ element, RAVEN 1-6, comprising the platoon leader (CO), the platoon second in command (XO), a platoon medic and an Electronic Warfare Officer (EWAR Officer).<br/> The EWAR Officer has access to the spectrum analyser, which may be used to identify units transmitting on radio.
	<br/><br/>
	RAVEN 1-1 through RAVEN 1-3	<br/>
	Comprising a Squad Leader, Medic, Support Gunner (MG), 2IC, AT Specialist and EOD specialist.<br/>
	The medic is double trained as a Marksman, and has access to DMRs.<br/>
	The 2IC is also a trained linguist/interpreter. The island of Altis has many refugees. Not everyone speaks English.<br/>
	<br/><br/>
	These smaller 6 man units are highly flexible and can easily be augmented by combining three or four people from another unit to form an 8, 9 or 10 man squad for extra firepower. Alternatively, they can be split off or reduced to a 4 man team while still maintaining much of their capabilities (e.g. 2IC, Medic, EOD, AT spec)."
]];

_player createDiaryRecord ["Diary", ["Misson Log","
	1 - Acta, Non Verba. The 24th Arrives on Altis and conducts some basic EOD work.<br/><br/>
	2 - ?<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Personalities","
	'Spike' Gillian - Senior Operations Lead, Myrmidones Altis Branch:<br/>
	Mr Gillian has had a long career in the British armed forces, serving for over 20 years before his deployment to Altis under the NATO banner. On the cusp of retirement, a fellow ex-Altis war veteran reached out to him with a proposal - leave the Marines, and join the Myrmidones. Now, a few years later, Mr Gillian is a senior operations lead on Altis, delegating tasks to various Myrmidon units in the centre of the island.<br/><br/>"
]];


_player createDiaryRecord ["Diary", ["Mission","
	Help rebuild Altis by fulfilling contracts for Myrmidones. Treat the Altians with respect and concern.<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	After the collapse of the AAF and the brutal Altis government under Arkantheros, the New Altis Republic has formed. The New Altis Army (NAA) are the nascent armed forces of this government. These soldiers are tasked with protecting Altis’ sovereignty, but many on Altis still do not trust them. Armed civilian militias are widespread, and the NAA must tread a difficult line - securing Altis against organized criminal gangs and the allegedly CSAT backed terrorist arm of the opposing political party - Agón (“The Struggle”).<br/><br/>

	The 24th Chorni Vorn has been hired as a subcontractor to Myrmidones Inc, a PMC that was started by a group of ex-Altis war veterans, ostensibly to help in peacekeeping and counterinsurgency operations around the world. As Altis has fallen into chaos once more, Myrmidones has gained valuable contracts from the New Altis Government and the United Nations. With good knowledge of the land and the people, and the benefit of being a separate entity from the NAA, the Myrmidones can travel more freely across the island than even the NAA. Tasked with the supervision of food and aid distribution, they have found a gap in their EOD capabilities. The 24th has been hired to fill that gap.
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