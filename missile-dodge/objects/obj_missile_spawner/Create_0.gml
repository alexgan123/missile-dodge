// object that controls the spawning of missiles at set times.

// time elapsed in the level.
time = 0;
// time on the previous frame
time_p = time; 

// check when "time" variable passes a certain value for the first time.
function t(_time) {
	return (time >= _time) and (time_p < _time);
}
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

// convenient functions for spawning missiles (use these)

// spawn regular missiles at the player's width or height.
function spawn_missile_regular_left(_tier) {
	spawn_missile(missileType.regular, _tier, 0, py, right);
}
function spawn_missile_regular_right(_tier) {
	spawn_missile(missileType.regular, _tier, rw, py, left);
}
function spawn_missile_regular_top(_tier) {
	spawn_missile(missileType.regular, _tier, px, 0, down);
}
function spawn_missile_regular_bottom(_tier) {
	spawn_missile(missileType.regular, _tier, px, rh, up);
}
// spawn missile at a fixed width or height, but can optionally be directed toward the player.
function spawn_missile_regular_fixed(_tier, _x_0_to_1, _y_0_to_1, _direct = false, _angle_deviation = 0) {
	// the x parameter will be multiplied by room_width, so input a decimal from 0 to 1 to specify x coord
	// y parameter will be multiplied by room_height, so input decimal from 0 to 1 to specify y coord
	// optional argument: direct missile will point the missile directly to player's current location
	// angle deviation: if missile is direct, how much the direction should be off by. 
	var _x = _x_0_to_1*rw;
	var _y = _y_0_to_1*rh;
	var _dir = right;
	if (_direct) _dir = point_direction(_x, _y, px, py) + _angle_deviation;
	else if (_x_0_to_1 == 0) _dir = right;
	else if (_x_0_to_1 == 1) _dir = left;
	else if (_y_0_to_1 == 0) _dir = down;
	else if (_y_0_to_1 == 1) _dir = up;
	
	spawn_missile(missileType.regular, _tier, _x, _y, _dir);
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

function spawn_missile_small_fixed(_tier, _x_0_to_1, _y_0_to_1, _direct = false, _angle_deviation = 0) { 
	var _x = _x_0_to_1*rw;
	var _y = _y_0_to_1*rh;
	var _dir = right;
	if (_direct) _dir = point_direction(_x, _y, px, py) + _angle_deviation;
	else if (_x_0_to_1 == 0) _dir = right;
	else if (_x_0_to_1 == 1) _dir = left;
	else if (_y_0_to_1 == 0) _dir = down;
	else if (_y_0_to_1 == 1) _dir = up;
	
	spawn_missile(missileType.small, _tier, _x, _y, _dir);
}

// speedy missile functions - always directed at player
function spawn_missile_speedy_left(_tier) {
	spawn_missile(missileType.speedy, _tier, 0, py, right);
}
function spawn_missile_speedy_right(_tier) {
	spawn_missile(missileType.speedy, _tier, rw, py, left);
}
function spawn_missile_speedy_fixed(_tier, _x_0_to_1, _y_0_to_1) {
	var _x = _x_0_to_1*rw;
	var _y = _y_0_to_1*rh;
	var _dir = point_direction(_x, _y, px, py);
	spawn_missile(missileType.speedy, _tier, _x, _y, _dir);
}
	
// explosive missile functions - always directed at player
function spawn_missile_exploding_left(_tier) {
	spawn_missile(missileType.exploding, _tier, 0, py, right);
}
function spawn_missile_exploding_right(_tier) {
	spawn_missile(missileType.exploding, _tier, rw, py, left);
}
function spawn_missile_exploding_fixed(_tier, _x_0_to_1, _y_0_to_1) {
	var _x = _x_0_to_1*rw;
	var _y = _y_0_to_1*rh;
	var _dir = point_direction(_x, _y, px, py);
	spawn_missile(missileType.exploding, _tier, _x, _y, _dir);
}

	
// spawn a coin at (x, y). Coins are worth a constant amount of points for each level.
function spawn_coin(_x_0_to_1, _y_0_to_1) {
	var _coin = instance_create_layer(_x_0_to_1*rw, _y_0_to_1*rh, "pickups", obj_coin);
	_coin.score_ = obj_game_manager.coin_value[obj_game_manager.level];
}

// type: powerupType of powerup to be spawned
// (x, y) location of powerup
function spawn_powerup(_type, _x_0_to_1, _y_0_to_1) {
	var _powerup = instance_create_layer(_x_0_to_1*rw, _y_0_to_1*rh, "pickups", obj_powerup);
	_powerup.powerup_type = _type;
	_powerup.update_properties();
}
