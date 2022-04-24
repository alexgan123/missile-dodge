// simple controller that controls music
if (room == rm_menu) {
	if (audio_is_playing(mus_game)) {
		audio_stop_sound(mus_game);
	}
	if (!audio_is_playing(mus_menu)) {
		audio_play_sound(mus_menu, 0, true);	
	}
}
else if (room == rm_game) {
	if (audio_is_playing(mus_menu)) {
		audio_stop_sound(mus_menu);
	}
	if (!audio_is_playing(mus_game)) {
		audio_play_sound(mus_game, 0, true);	
	}
}
