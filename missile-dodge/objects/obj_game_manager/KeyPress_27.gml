switch (game_state) {
	case gameState.playing:
	game_state = gameState.paused;
	break;
	case gameState.paused:
	game_state = gameState.playing;
	break;
}
