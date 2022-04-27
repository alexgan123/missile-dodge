// calculate time played in hours/minutes/seconds
global.stats_time_played_hours = global.stats_time_played div 3600;
global.stats_time_played_minutes = (global.stats_time_played mod 3600) div 60;
global.stats_time_played_seconds = (global.stats_time_played mod 3600) mod 60;

// manage cursor
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
