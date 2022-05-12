// determine whether button is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

// set properties based on whether button is active
if (active) {
	// determine if button is pressable or not
	if (button_type_ == buttonType.start_game) {
		pressable = (global.game_level >= level);
	}
	else {
		pressable = true;	
	}
	
	if (pressable) image_alpha = 1;
	else image_alpha = 0.15;
}
else {
	pressable = false;
	image_index = 0;
	image_alpha = 0.15;
}

