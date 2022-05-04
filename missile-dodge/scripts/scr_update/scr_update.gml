// update the volumes of the sound in game to match the global.options_music and global.options_sfx values.
function update_volume() {
	audio_group_set_gain(Music, global.options_music/140, 0);
	audio_group_set_gain(SFX, global.options_sfx/100, 0);
}

// update the global.highscore variable and save
// OPTIONALLY increments the global.level variable so the user can advance to the next level. 
function update_and_save_highscore(_increment_game_level = false) {
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
