if (outside_playing_area()) {
	award_missile();
}
if (obj_game_manager.game_state == gameState.playing) {
	speed = move_speed * global.delta;
	if (missile_type == missileType.homing) {
		direction = angle_approach(direction, point_direction(x, y, obj_player.x, obj_player.y), 0.08*global.delta);
		image_angle = direction - 90;
	}
	else if (missile_type == missileType.exploding) {
		if (fuse > 0) fuse -= global.delta;
		else {
			spawn_bullet(tier, direction - 15);
			spawn_bullet(tier, direction);
			spawn_bullet(tier, direction + 15);
			award_missile();
		}
	}
	else if (missile_type == missileType.scatter) {
		fuse -= global.delta;
		if (fuse <= 0) {
			speed = 0;
			if (fuse <= -0.75) {
				spawn_bullet(tier, up);
				spawn_bullet(tier, right);
				spawn_bullet(tier, left);
				spawn_bullet(tier, down);
				award_missile();
			}
		}
	}
	
	// flame animation
	if (flame_increasing) {
		if (flame_length < flame_length_max) flame_length += 1.5*global.delta;
		else flame_increasing = false;
	}
	else {
		if (flame_length > flame_length_min) flame_length -= 1.5*global.delta;
		else flame_increasing = true;
	}
}
else {
	speed = 0;	
}

image_angle = direction - 90; // invariant

