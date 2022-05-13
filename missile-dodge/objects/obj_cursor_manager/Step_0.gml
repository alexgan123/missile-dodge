// manages the cursor throughout the game
if (instance_exists(obj_menu_manager)) {
	window_set_cursor(cr_default); // menu screen should have cursor visible	
}
else if (instance_exists(obj_game_manager)) {
	if (obj_game_manager.game_state == gameState.playing) {
		window_set_cursor(cr_none); // menu screen should hide cursor when playing
	}
	else {
		window_set_cursor(cr_default);
	}
}
