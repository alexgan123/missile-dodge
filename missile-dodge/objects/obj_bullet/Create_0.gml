// public variables
tier = 0; 
direction = 0;

// private variables
image_index = tier;
image_angle = direction - 90; // image angle should ALWAYS be direction - 90
damage = 0; // how much damage bullet does
move_speed = 0; // speed of the bullet

// method that determines whether this object is outside the playing area
function outside_playing_area() {
	return ((x < -50) or (x > room_width + 50) or (y < -50) or (y > room_height + 50));
}

// update the bullet's private variables
function update_properties() {
	image_index = tier;
	image_angle = direction - 90;
	damage = 200 + (tier)*100;
	move_speed = 480 * (1 + (tier*0.05));
	audio_stop_sound(snd_split);
	audio_play_sound(snd_split, 0, false);
}
