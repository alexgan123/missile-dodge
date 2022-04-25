// determine whether slider is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

value = (x - x_min)/360;
value = clamp(value, 0, 1);
percentage = round(value * 100);

if (active) {
	if (selected) {
		x = clamp(mouse_x, x_min, x_max)
		image_blend = color_blue;
	}
	else {
		image_blend = c_white;
	}
}
else {
	image_blend = c_white;
	selected = false;
}
