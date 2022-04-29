// Various game functions.

// function to display a damage indicator above the players head
function show_damage_indicator(_damage) {
	var _ind = instance_create_layer(obj_player.x+random_range(-20, 20), obj_player.y-50, "ui", obj_damage_indicator);
	_ind.damage = round(_damage);
	if (obj_game_manager.damage_reduction > 0) _ind.color = color_blue;
	else _ind.color = color_red;
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
			_noti.text = "+1 Extra Life";
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
