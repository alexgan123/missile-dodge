// powerup type
powerup_type = powerupType.life;

// private variables
can_lose_alpha = false;
alpha = 1;
alarm0 = 3; // powerup lasts 6 seconds in total
counter = 0;

// update the powerup's properties
// should be called after initializing a powerup
function update_properties() {
	image_index = powerup_type;
	switch (powerup_type) {
		case powerupType.life: 
		part_particles_create(global.partsys, x, y, global.part_powerup_life, 1);
		break;
		case powerupType.regen:
		part_particles_create(global.partsys, x, y, global.part_powerup_regen, 1);
		break;
		case powerupType.shield: 
		part_particles_create(global.partsys, x, y, global.part_powerup_shield, 1);
		break;
	}
}

// destroy the powerup and apply bonuses
function destroy_and_apply_effect() {
	show_notification_powerup(powerup_type);
	audio_play_sound(snd_powerup, 0, false);
	switch (powerup_type) {
		case powerupType.life: {
			part_particles_create(global.partsys, x, y, global.part_powerup_life, 1);
			obj_game_manager.lives_ += 1;
		}
		break;
		case powerupType.regen: {
			part_particles_create(global.partsys, x, y, global.part_powerup_regen, 1);
			obj_game_manager.regen_speed = 48;
			obj_game_manager.alarm0 = 8;
		}
		break;
		case powerupType.shield: {
			part_particles_create(global.partsys, x, y, global.part_powerup_shield, 1);
			obj_game_manager.damage_reduction = 0.5;
			obj_game_manager.alarm2 = 8;
		}
		break;
	}
	instance_destroy();
}
