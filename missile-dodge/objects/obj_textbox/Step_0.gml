// determine whether textbox is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

if (alarm1 > 0) alarm1 -= global.delta;
else can_lose_alpha = true;
if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= 1.2*global.delta;
	}
	else {
		prompt = "";	
	}
}

// line blinking
if (alarm0 > 0) alarm0 -= global.delta;
if (alarm0 <= 0) {
	line = !line;
	alarm0 = 0.35;
}

// if the current menu state is not the correct one, 
// reset most of the textbox's properties.
if (!active) {
	text = "";
	selected = false;
	prompt = "";
	can_lose_alpha = true;
	alpha = 0;
	alarm1 = 0;
}
