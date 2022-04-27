// update the volumes of the sound in game to match the global.options_music and global.options_sfx values.
function update_volume() {
	audio_group_set_gain(Music, global.options_music/100, 0);
	audio_group_set_gain(SFX, global.options_sfx/100, 0);
}

