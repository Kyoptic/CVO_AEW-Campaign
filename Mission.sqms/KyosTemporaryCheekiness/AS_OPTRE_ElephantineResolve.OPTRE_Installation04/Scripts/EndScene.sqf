// playMusic ""; //Cherno National Anthem


//[0, 10, true, false] call BIS_fnc_cinemaBorder;
titleCut ["<t size='2'>Mission Success.</t>", "BLACK FADED", 999];
[] execVM "Outro.sqs";


[] Spawn {
	sleep 1;
	titletext ["<t size='2'> Mission Success.</t>","PLAIN DOWN",1, true, true];
	playmusic "CUP_A2_Chernarussian_Anthem"; //Chernorussian national anthem

	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	titleCut ["<t size='2'> Mission Success.</t>", "BLACK IN", 1];
};
