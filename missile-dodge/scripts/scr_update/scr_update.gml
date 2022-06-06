// update the volumes of the sound in game to match the global.options_music and global.options_sfx values.
function update_volume() {
	audio_group_set_gain(Music, global.options_music/140, 0);
	audio_group_set_gain(SFX, global.options_sfx/100, 0);
}

// update the game speed in game to match the value of global.options_fps
function update_game_speed() {
	game_set_speed(global.options_fps, gamespeed_fps);
}

// update the window_fullscreen in game to match the value of global.options_fullscreen
function update_fullscreen() {
	window_set_fullscreen(global.options_fullscreen);
	window_set_size((display_get_height()*64) / 45, (display_get_height()*4) / 5);
	obj_main.alarm[0] = 1;
}

// update the vsync setting in game to match the value of global.options_vsync
function update_vsync() {
	display_reset(0, global.options_vsync);	
}

// update the global.highscore variable and save
// OPTIONALLY increments the global.level variable so the user can advance to the next level. 
function update_and_save_highscore(_increment_game_level = false) {
	
	data_send_score();
	
	// update the highscore if possible
	if (round(obj_game_manager.score_) > global.highscore[obj_game_manager.level]) {
		global.highscore[obj_game_manager.level] = round(obj_game_manager.score_);
		ini_open("save.ini");
		ini_write_real("highscore", string(obj_game_manager.level), global.highscore[obj_game_manager.level]);
		ini_close();
	}
	
	// unlock the next level if player completed the highest level unlocked.
	if (_increment_game_level) {
		if (obj_game_manager.level == global.game_level) {
			global.game_level += 1;
			ini_open("save.ini");
			ini_write_real("game", "level", global.game_level);
			ini_close();
		}
	}
}
