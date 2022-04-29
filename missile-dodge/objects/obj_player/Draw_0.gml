if (obj_game_manager.player_visible) {
	if (obj_game_manager.damage_reduction > 0) {
		draw_sprite(spr_shield_below, 0, x, y);
	}
	draw_self();
	if ((obj_game_manager.damage_reduction > 0) and (obj_game_manager.immune)) {
		draw_sprite(spr_shield_above, 0, x, y);
	}
}
