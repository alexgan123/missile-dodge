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

// audio testing mode to test out sound effect levels
if (audio_testing) {
	if (keyboard_check_pressed(ord("Q"))) audio_play_sound(snd_death, 0, false);
	if (keyboard_check_pressed(ord("F"))) audio_play_sound(snd_explosive, 0, false);
	if (keyboard_check_pressed(ord("E"))) audio_play_sound(snd_homing, 0, false);
	if (keyboard_check_pressed(ord("R"))) audio_play_sound(snd_hurt, 0, false);
	if (keyboard_check_pressed(ord("T"))) audio_play_sound(snd_notification, 0, false);
	if (keyboard_check_pressed(ord("Y"))) audio_play_sound(snd_powerup, 0, false);
	if (keyboard_check_pressed(ord("U"))) audio_play_sound(snd_press, 0, false);
	if (keyboard_check_pressed(ord("I"))) audio_play_sound(snd_scatter, 0, false);
	if (keyboard_check_pressed(ord("O"))) audio_play_sound(snd_select, 0, false);
	if (keyboard_check_pressed(ord("P"))) audio_play_sound(snd_speedy, 0, false);
	if (keyboard_check_pressed(ord("G"))) audio_play_sound(snd_split, 0, false);
}
