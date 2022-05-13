// determine whether slider is active or not
if ((instance_exists(obj_menu_manager)) and (obj_menu_manager.menu_state == active_state))
or ((instance_exists(obj_game_manager)) and (obj_game_manager.game_state == active_state)) {
	active = true;	
}
else {
	active = false;
}

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

value = (x - x_min)/360;
value = clamp(value, 0, 1);
percentage = round(value * 100);
fps_value = round(((value*180) + 60) / 12) * 12;

// Checks every frame if the current state changes.
// If the current state changes, then immediately update global.options variables and the ini
// with the value currently held in slider.

if (instance_exists(obj_menu_manager)) {
	_curmenu = obj_menu_manager.menu_state;	
}
if (_curmenu != _prevmenu) {
	slider_apply_value();
}
_prevmenu = _curmenu;

if (instance_exists(obj_game_manager)) {
	_curgame = obj_game_manager.game_state;	
}
if (_curgame != _prevgame) {
	slider_apply_value();
}
_prevgame = _curgame;
