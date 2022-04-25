// determine whether button is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

if (!active) {
	image_index = 0;	
}
