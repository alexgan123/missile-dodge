// Colliding with missile
if (!obj_game_manager.immune) {
	var _damage_taken = other.damage * (1 - obj_game_manager.damage_reduction);
	player_take_hit(_damage_taken); // apply damage and perform the necessary checks
	
	// since player was hit by missile, destroy it instead of awarding points
	with (other) {
		instance_destroy();
	}
}
	

