// public variables
missile_type = missileType.regular; // type of missile
tier = 0; // tier, (red/blue/green)
direction = 0; 

// private variables
image_index = tier;
image_angle = direction - 90; // This should ALWAYS be true
damage = 0; // how much damage missile does
move_speed = 0; // current speed of the missile
fuse = 1; // for exploding/scatter missiles: how long before missile splits off into bullets.

flame_length_max = 2; // max length
flame_length_min = 1.8; // min length
flame_width = 1; // how wide the flame is

flame_length = flame_length_max; // current flame length
flame_increasing = false;

// whether the missile has awarded points or not
// this is to prevent missiles giving points twice
awarded = false; 

// method that determines whether this object is outside the playing area
function outside_playing_area() {
	return ((x < -50) or (x > room_width + 50) or (y < -50) or (y > room_height + 50));
}
// method that destroys the missile and awards points
// checks if awarded flag is false to prevent point from being awarded twice.
function award_missile() {
	if (!awarded) {
		obj_game_manager.score_ += 300 + (8*obj_game_manager.combo);
		obj_game_manager.combo += 1;
		awarded = true;
		instance_destroy();
	}
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
	// determine the fuse amount in seconds
	if (missile_type == missileType.exploding) {
		fuse = 0.75;
	}
	else if (missile_type == missileType.scatter) {
		fuse = round(random_range(2, 3));
	}
	// determine the color of the missile
	image_index = tier;
	image_angle = direction - 90;
	// determine the damage of the missile
	damage = 200 + (tier)*100;
	
	// determine some attributes based on the missile's type
	switch (missile_type) {
		case missileType.regular: { 
			sprite_index = spr_missile;
			move_speed = 480;
		}
		break;
		case missileType.small: {
			sprite_index = spr_missile_small;
			move_speed = 515;
			flame_width = 0.5;
			flame_length_max = 1.5;
			flame_length_min = 1.4;
			flame_length = flame_length_max;
		}
		break;
		case missileType.speedy: {
			sprite_index = spr_missile_speedy;
			move_speed = 750;
			audio_stop_sound(snd_speedy);
			audio_play_sound(snd_speedy, 0, false);
		}
		break;
		case missileType.homing: {
			sprite_index = spr_missile_homing;
			move_speed = 576;
			audio_stop_sound(snd_homing);
			audio_play_sound(snd_homing, 0, false);
		}
		break;
		case missileType.exploding: {
			sprite_index = spr_missile_exploding;
			move_speed = 480;
			audio_stop_sound(snd_explosive);
			audio_play_sound(snd_explosive, 0, false);
		}
		break;
		case missileType.scatter: {
			sprite_index = spr_missile_scatter;
			move_speed = 480;
			audio_stop_sound(snd_scatter);
			audio_play_sound(snd_scatter, 0, false);
		}
		break;
	}
	// after determining the base speed, apply some speed multipliers.
	move_speed *= (1 + (tier*0.075)); // speed scales based on tier
	// important: missiles spawning from top or bottom side should move slower, since there is less vertical space
	if ((round(y) <= 0) or (round(y) >= room_height)) {
		move_speed = (move_speed * vertical_multiplier); 
	}
}
