// public variables
missile_type = missileType.regular; // type of missile
tier = 0; // tier, (red/blue/green)
direction = 0; 

// private variables
image_index = tier;
image_angle = direction - 90; // This should ALWAYS be true
damage = 0; // how much damage missile does
move_speed = 0; // current speed of the missile
fuse = 108; // for exploding/scatter missiles: how long before missile explodes

// method that determines whether this object is outside the playing area
function outside_playing_area() {
	return ((x < -50) or (x > room_width + 50) or (y < -50) or (y > room_height + 50));
}
// method that destroys the missile and awards points
function award_missile() {
	obj_game_manager.score_ += 300 + (8*obj_game_manager.combo);
	obj_game_manager.combo += 1;
	instance_destroy();
}

// method for spawning a bullet
function spawn_bullet(_tier, _direction) {
	var _bullet = instance_create_layer(x, y, "missiles", obj_bullet);
	_bullet.tier = _tier;
	_bullet.direction = _direction;
	_bullet.update_properties();
}

// update the values for the private variables
// should be done after initializing the missile's properties
function update_properties() {
	// scatter missiles have a random fuse
	if (missile_type == missileType.exploding) {
		fuse = 108;
	}
	else if (missile_type == missileType.scatter) {
		fuse = round(random_range(288, 432));
	}
	image_index = tier;
	image_angle = direction - 90;
	damage = 200 + (tier)*100;
	switch (missile_type) {
		case missileType.regular: { 
			sprite_index = spr_missile;
			move_speed = (10/3);
		}
		break;
		case missileType.small: {
			sprite_index = spr_missile_small;
			move_speed = 3.6;
		}
		break;
		case missileType.speedy: {
			sprite_index = spr_missile_speedy;
			move_speed = 4.4;
		}
		break;
		case missileType.homing: {
			sprite_index = spr_missile_homing;
			move_speed = 7;
		}
		break;
		case missileType.exploding: {
			sprite_index = spr_missile_exploding;
			move_speed = (10/3);
		}
		break;
		case missileType.scatter: {
			sprite_index = spr_missile_scatter;
			move_speed = 7;
		}
		break;
	}
	move_speed *= (1 + (tier*0.15));
	// if missile spawned from the top or bottom side, then missile should move slower.
	if ((y == 0) or (y == room_height)) {
		move_speed = (move_speed * vertical_multiplier); 
	}
}
