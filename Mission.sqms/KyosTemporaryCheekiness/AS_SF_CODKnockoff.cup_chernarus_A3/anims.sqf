"Acts_CrouchGetLowGesture" // Comamnding, get low, short

"Acts_Rifle_Operations_Back" // check rear

"Acts_Rifle_Operations_Checking_Chamber" // CHECK CHAMBER

"Acts_Pointing_Right" //Point right

"Acts_SupportTeam_Front_KneelLoop" // Kneel and look around with rifle

/*
B5 switchMove "AmovPercMstpSrasWrflDnon";
[] spawn 
{
	sleep 0.5;
	B5 playMove "amovPknlMstpSrasWrflDnon"; // player goes prone
	B5 playMove "Acts_SupportTeam_Front_KneelLoop"; // player gets up on one knee
	B5 playMove "Acts_Rifle_Operations_Checking_Chamber"; // player gets up on one knee
};


B5 switchMove "AmovPercMstpSrasWrflDnon";
[] spawn 
{
	sleep 0.5;
	B5 playMove "amovPknlMstpSrasWrflDnon"; // player goes prone
	B5 playMove "Acts_SupportTeam_Front_KneelLoop"; // player gets up on one knee
	B5 playMove "Acts_Rifle_Operations_Checking_Chamber"; // player gets up on one knee
};
*/(

_BravoRed = [B1, B2, B3, B4];
{
	_x switchMove "AmovPercMstpSrasWrflDnon";
	uisleep (random [1, 2, 3]);
	[] spawn
	{
		uisleep 0.5;
		_x playMove "amovPknlMstpSrasWrflDnon";
		_x playMove "Acts_SupportTeam_Front_KneelLoop";
		_x playMove "Acts_Rifle_Operations_Checking_Chamber";
	};
} forEach _BravoRed;


B1 playmove "Acts_CrouchGetLowGesture";
B1 playmove "Acts_SupportTeam_Front_KneelLoop";
B1 playmove "Acts_Pointing_Right";

B2 playmove "amovPknlMstpSrasWrflDnon";
B2 playmove "Acts_SupportTeam_Front_KneelLoop";

uisleep 1
B3 playmove "amovPknlMstpSrasWrflDnon";
B3 playmove "Acts_SupportTeam_Front_KneelLoop";
B3 playmove "Acts_Rifle_Operations_Checking_Chamber";
B3 playmove "amovPknlMstpSrasWrflDnon";

B4 playmove "amovPknlMstpSrasWrflDnon";
B4 playmove "Acts_Rifle_Operations_Back";
B4 playmove "amovPknlMstpSrasWrflDnon";

// B1: check radio, scan with rifle, move out
// B2+B3: check chamber, scan with rifle
// B4: Check back