// determine whether textbox is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

// if can_lose_alpha, then make the text slowly fade out
if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/120);
	}
	else {
		prompt = "";	
	}
}

// if the current menu state is not the correct one, 
// reset most of the textbox's properties.
if (!active) {
	text = "";
	selected = false;
	prompt = "";
	can_lose_alpha = true;
	alpha = 0;
	alarm[1] = -1;
}
