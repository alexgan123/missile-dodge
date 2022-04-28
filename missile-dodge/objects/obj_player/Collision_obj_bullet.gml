// procedure when being hit by a missile
// Check if player is vulnerable to damage
if (!obj_game_manager.immune) {
	obj_game_manager.immune = true;
	obj_game_manager.alarm[4] = 120;
	
	var _damage_taken = other.damage * (1 - obj_game_manager.damage_reduction);
	// deduct hp
	obj_game_manager.hp -= _damage_taken;
	obj_game_manager.hp = clamp(obj_game_manager.hp, 0, obj_game_manager.hp_max);
	
	// reset combo
	obj_game_manager.combo = 0;
	
	// disable regen for 1 sec
	obj_game_manager.regenerating = false;
	obj_game_manager.alarm[3] = 120;
	
	show_damage_indicator(_damage_taken);
	
	// if player lost a life from this hit
	if (obj_game_manager.hp <= 0) {
		audio_play_sound(snd_death, 0, false);
		obj_game_manager.lives_ -= 1;
		
		if (obj_game_manager.lives_ > 0) {
			obj_game_manager.hp = obj_game_manager.hp_max;
			// set 3 seconds of invulnerability instead of 1 after losing a life
			obj_game_manager.immune = true;
			obj_game_manager.alarm[4] = 360;
		}
		else {
			// you died. RIP
			obj_game_manager.game_state = gameState.died;
		}
	}
	else {
		audio_play_sound(snd_hurt, 0, false);
	}
	
	// destroy this missile without giving score 
	with (other) {
		instance_destroy();
	}
}
	

