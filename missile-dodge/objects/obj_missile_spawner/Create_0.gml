// object that controls the spawning of missiles at set times.

// time elapsed in the level.
// Assume each level is 120 seconds long.
time = 0;

// methods for spawning missiles
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

function spawn_coin() {
	// coins will spawn with a value depending on the current time.
}

// macro for player x and player y
#macro px obj_player.x
#macro py obj_player.y
// macro for 4 cardinal directions
#macro right 0
#macro up 90
#macro left 180
#macro down 270
