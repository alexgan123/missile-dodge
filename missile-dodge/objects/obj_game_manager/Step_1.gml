// listen for user pressing the escape key to pause game
if (keyboard_check_pressed(vk_escape)) {
	switch (game_state) {
		case gameState.playing: {
			game_state = gameState.paused;
			audio_play_sound(snd_pause, 0, false);
		}
		break;
	}
}
