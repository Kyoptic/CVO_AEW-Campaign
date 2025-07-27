Mortar1 commandArtilleryFire [(getPosATL airbasetarget1), "8Rnd_82mm_Mo_shells", 4];
sleep 0.5;

Mortar2 commandArtilleryFire [(getPosATL airbasetarget2), "8Rnd_82mm_Mo_shells", 4];
sleep 0.2;
Mortar3 commandArtilleryFire [(getPosATL airbasetarget3), "8Rnd_82mm_Mo_shells", 4];
sleep 5;
playmusic  "LeadTrack02_F_EPA";
sleep 10;

Mortar1 commandArtilleryFire [(getPosATL airbasetarget1), "8Rnd_82mm_Mo_shells", 2];
sleep 0.5;

Mortar2 commandArtilleryFire [(getPosATL airbasetarget2), "8Rnd_82mm_Mo_shells", 3];
sleep 0.2;
Mortar3 commandArtilleryFire [(getPosATL airbasetarget3), "8Rnd_82mm_Mo_shells", 2];

sleep 10;

titleText ["<t align = 'center' shadow = '2' color='#1aa323' size'2' font='RobotoCondensedBold' > ABDERA HELO BASE COMMANDER: </t><t color='#ffffff' size='1.5' font='RobotoCondensed' > ALL FRIENDLY CALLSIGNS, ALL FRIENDLY CALLSIGNS, THIS IS ABDERA HELICOPTER BASE, WE ARE UNDER MORTAR ATTACK BY FIA FORCES, ANY NEARBY FORCES PLEASE ASSIST! WE HAVE AUDIO ON MORTARS FIRING TO OUR WEST. OUT!</t>", "PLAIN DOWN", 0.7, true, true];

/* "MortarMarker1" setMarkerAlpha 1;
"MortarMarker2" setMarkerAlpha 0.5; */

sleep 25;

Mortar1 commandArtilleryFire [(getPosATL airbasetarget1), "8Rnd_82mm_Mo_shells", 2];
sleep 0.5;

Mortar2 commandArtilleryFire [(getPosATL airbasetarget2), "8Rnd_82mm_Mo_shells", 3];
sleep 0.2;
Mortar3 commandArtilleryFire [(getPosATL airbasetarget3), "8Rnd_82mm_Mo_shells", 2];

sleep 20;

Mortar1 commandArtilleryFire [(getPosATL airbasetarget1), "8Rnd_82mm_Mo_shells", 2];
sleep 0.5;

Mortar2 commandArtilleryFire [(getPosATL airbasetarget2), "8Rnd_82mm_Mo_shells", 3];
sleep 0.2;
Mortar3 commandArtilleryFire [(getPosATL airbasetarget3), "8Rnd_82mm_Mo_shells", 2];
