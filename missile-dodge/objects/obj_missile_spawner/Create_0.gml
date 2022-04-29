// object that controls the spawning of missiles at set times.

// time elapsed in the level.
// Assume each level is 120 seconds long.
time = 0*s;

// the most general method for spawning a missile
function spawn_missile(_type, _tier, _x, _y, _direction) {
	// type: missileType of the missle to be spawned
	// tier: color of missile to be spawned (integer from 0-2)
	// (x, y) x and y coordinate to spawn missile on
	// direction: the direction of the missile
	
	var _missile = instance_create_layer(_x, _y, "missiles", obj_missile);
	_missile.tier = _tier;
	_missile.missile_type = _type;
	_missile.direction = _direction;
	// updates missile's private variables upon creation.
	_missile.update_properties(); 
}

// convenient functions for spawning missiles

// spawn regular missiles at the player's width or height.
function spawn_missile_regular_left(_tier) {
	spawn_missile(missileType.regular, _tier, 0, py, right);
}
function spawn_missile_regular_right(_tier) {
	spawn_missile(missileType.regular, _tier, room_width, py, left);
}
function spawn_missile_regular_top(_tier) {
	spawn_missile(missileType.regular, _tier, px, 0, down);
}
function spawn_missile_regular_bottom(_tier) {
	spawn_missile(missileType.regular, _tier, px, room_height, up);
}

// spawn small missiles at the player's width or height, with a slight deviation.
// Usually comes in bursts of 3
function spawn_missile_small_left(_tier) {
	spawn_missile(missileType.small, _tier, 0, py+random_range(-60, 60), right);
}
function spawn_missile_small_right(_tier) {
	spawn_missile(missileType.small, _tier, room_width, py+random_range(-60, 60), left);
}
function spawn_missile_small_top(_tier) {
	spawn_missile(missileType.small, _tier, px+random_range(-60, 60), 0, down);
}
function spawn_missile_small_bottom(_tier) {
	spawn_missile(missileType.small, _tier, px+random_range(-60, 60), room_height, up);
}



function spawn_coin(_x, _y) {
	// coins will spawn with a value depending on the current time.
	var _coin = instance_create_layer(_x, _y, "pickups", obj_coin);
	_coin.score_ = time;
}

function spawn_powerup(_type, _x, _y) {
	// type: powerupType of powerup to be spawned
	// (x, y) location of powerup
	var _powerup = instance_create_layer(_x, _y, "pickups", obj_powerup);
	_powerup.powerup_type = _type;
	_powerup.update_properties();
}

// macro for player x and player y
#macro px obj_player.x
#macro py obj_player.y
// macro for 4 cardinal directions
#macro right 0
#macro up 90
#macro left 180
#macro down 270

#macro s 144
