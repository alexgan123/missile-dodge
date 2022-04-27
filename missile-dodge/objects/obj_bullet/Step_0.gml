if (outside_playing_area()) {
	instance_destroy();	
}
if (obj_game_manager.game_state == gameState.playing) {
	speed = move_speed;	
}
else {
	speed = 0;	
}

image_angle = direction - 90;
