if (outside_playing_area()) {
	// exploding/scatter missiles may not burst if player stands in a corner.
	// therefore bullets may not always spawn, so bullets give 0 points.
	instance_destroy();
}
if (obj_game_manager.game_state == gameState.playing) {
	speed = move_speed * global.delta;	
}
else {
	speed = 0;	
}

image_angle = direction - 90;
