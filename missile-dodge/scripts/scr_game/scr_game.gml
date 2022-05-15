// Various game functions.

// function to display a damage indicator above the players head
function show_damage_indicator(_damage) {
	if (global.options_damage_indicators) {
		var _ind = instance_create_layer(obj_player.x+random_range(-20, 20), obj_player.y-50, "ui", obj_damage_indicator);
		_ind.damage = round(_damage);
		if (obj_game_manager.damage_reduction > 0) _ind.color = color_blue;
		else _ind.color = color_red;
	}
}

// function to display a game notification
function show_notification_game(_message) {
	audio_play_sound(snd_notification, 0, false);
	with (obj_notification_game) {
		instance_destroy();
	}
	var _noti = instance_create_layer(960, 350, "ui", obj_notification_game);
	_noti.text = _message;
}
// function to display a powerup notification
function show_notification_powerup(_powerup_type) {
	with (obj_notification_powerup) {
		instance_destroy();
	}
	var _noti = instance_create_layer(960, 130, "ui", obj_notification_powerup);
	switch (_powerup_type) {
		case powerupType.life: {
			_noti.text = "Extra Life Activated";
			_noti.color = color_green;
		}
		break;
		case powerupType.regen: {
			_noti.text = "Rapid Regeneration Activated";
			_noti.color = color_red;
		}
		break;
		case powerupType.shield: {
			_noti.text = "Shield Aura Activated";
			_noti.color = color_blue;
		}
		break;
	}
}

// this code is used to apply damage to the player AND perform additional checks,
// such as game over, losing a life, etc.
// =====This function MUST be used to reduce the Player's HP.=====
function player_take_hit(_damage) {
	obj_game_manager.immune = true;
	obj_game_manager.alarm4 = 1;
	
	// deduct hp
	obj_game_manager.hp -= _damage;
	obj_game_manager.hp = clamp(obj_game_manager.hp, 0, obj_game_manager.hp_max);
	
	// reset combo
	obj_game_manager.combo = 0;
	
	// disable regen for 1 sec
	obj_game_manager.regenerating = false;
	obj_game_manager.alarm3 = 1;
	
	show_damage_indicator(_damage);
	
	// if player lost a life from this hit
	if (obj_game_manager.hp <= 0) {
		audio_play_sound(snd_death, 0, false);
		obj_game_manager.lives_ -= 1;
		obj_game_manager.player_visible = false;
		obj_game_manager.alarm5 = 1;
		obj_game_manager.immune = true;
		obj_game_manager.alarm4 = 4;
		part_particles_create(global.partsys, x, y, global.part_death, 1);
		
		// check if game is over
		if (obj_game_manager.lives_ > 0) {
			obj_game_manager.hp = obj_game_manager.hp_max;
		}
		else {
			// you died. RIP
			obj_game_manager.game_state = gameState.died;
			update_and_save_highscore(false);
		}
	}
	else {
		audio_play_sound(snd_hurt, 0, false);
	}
}
