_targets = [t_1, t_2, t_3, t_4, t_5, t_6, t_7]; // list of targets
{G_1 reveal _x} forEach _targets; // reveal dummy targets to searchlight 1 (G_1)
{G_2 reveal _x} forEach _targets; // reveal dummy targets to searchlight 1 (G_2)
{G_3 reveal _x} forEach _targets; // reveal dummy targets to searchlight 1 (G_3)

while {(alive G_1) || (alive G_2) || (alive G_3)} do // while any of the searchlights is alive...
{
	_N= floor(random 7); // random number between 1 and 7 (i.e. number of items in _targets, adjust as necessary.)
	G_1 dotarget (_targets select _N); // pick a random target on the array, make searchlight target that random target.
	sleep 1; //have a 'lil break for our 'lil toasty CPUs
	_N= floor(random 7);
	sleep 2;
	G_2 dotarget (_targets select _N);
	_N= floor(random 7);
	sleep 1.5;
	G_3 dotarget (_targets select _N);
	sleep 1;
	hint("Cycle complete!"); // comment this out once you've tested. It drops a hint every time script reaches here. Should stop once you kill all three searchlights.
};