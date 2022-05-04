// properties of the coin
score_ = 0; // score that the coin gives

// private variables
can_lose_alpha = false;
alpha = 1;
alarm[0] = 432; // coins last for 6 seconds in total

xscale = 1;
flag = false;

// spawning particle
part_particles_create(global.partsys, x, y, global.part_coin, 1);

// destroy the coin and apply bonuses
function destroy_and_apply_effect() {
	audio_play_sound(snd_coin, 0, false);
	obj_game_manager.score_ += score_;
	part_particles_create(global.partsys, x, y, global.part_coin, 1);
	instance_destroy();
}
