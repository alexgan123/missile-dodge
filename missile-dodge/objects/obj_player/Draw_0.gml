if (obj_game_manager.player_visible) {
	if (obj_game_manager.damage_reduction > 0) {
		draw_sprite(spr_shield_below, 0, x, y);
	}
	draw_self();
	if ((obj_game_manager.damage_reduction > 0) and (obj_game_manager.immune)) {
		draw_sprite(spr_shield_above, 0, x, y);
	}
}

if (instance_exists(obj_coin)) {
	var _inst = instance_nearest(x, y, obj_coin);
	var _dir = point_direction(x, y, _inst.x, _inst.y);
	draw_sprite_ext(spr_coin_arrow, 0, x, y, 1, 1, _dir-90, c_white, 0.75);
}

//draw_text_f(c_white, fa_center, fa_middle, calibri_25, x, y+40, string(obj_game_manager.score_))