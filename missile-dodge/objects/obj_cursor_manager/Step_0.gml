// manages the cursor throughout the game
if (instance_exists(obj_menu_manager)) {
	if (window_get_cursor() != cr_default) window_set_cursor(cr_default);
}
else if (instance_exists(obj_game_manager)) {
	if (obj_game_manager.game_state == gameState.playing) {
		if (window_get_cursor() != cr_none) window_set_cursor(cr_none);
	}
	else {
		if (window_get_cursor() != cr_default) window_set_cursor(cr_default);
	}
}