
if (obj_game_manager.damage_reduction > 0) {
	draw_sprite(spr_shield_below, 0, x, y);
}
draw_self();
if (obj_game_manager.damage_reduction > 0) {
	draw_sprite(spr_shield_above, 0, x, y);
}
