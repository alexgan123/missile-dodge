// This alarm event determines the state of the health bar flash
// check if player is currently regenerating
if (regen_speed > 0.08) {
	// toggle the flashing health bar
	health_bar_regen_flashing = !health_bar_regen_flashing;
	if (health_bar_regen_flashing) alarm[1] = 10;
	else alarm[1] = 30;
}
else {
	health_bar_regen_flashing = false;
	alarm[1] = 2;	
}
