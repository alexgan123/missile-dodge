switch (game_state) {
	case gameState.playing: {
		game_state = gameState.paused;
		audio_play_sound(snd_pause, 0, false);
	}
	break;
	case gameState.paused:
	game_state = gameState.playing;
	break;
}
