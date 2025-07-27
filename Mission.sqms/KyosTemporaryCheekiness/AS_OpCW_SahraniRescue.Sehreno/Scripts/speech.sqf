//hint "Beep!";

if (isDedicated) then {[loudspeaker1, ["speech", 2000, 1]] remoteExec ["say3D", (-2), false];}
sleep 0.1;
if (isDedicated) then {[loudspeaker2, ["speech", 2000, 1]] remoteExec ["say3D", (-2), false];}



// if (isServer) then
// {
// playSound3D [getMissionPath "sound\speech.ogg", speaker, false, getposASL (speaker), 2, 1, 1000, 0, false]};
// sleep 300;
// playSound3D [getMissionPath "sound\speech.ogg", speaker, false, getposASL (speaker), 2, 1, 1000, 0, false]};
// sleep 300;
// playSound3D [getMissionPath "sound\speech.ogg", speaker, false, getposASL (speaker), 2, 1, 1000, 0, false]};
// };