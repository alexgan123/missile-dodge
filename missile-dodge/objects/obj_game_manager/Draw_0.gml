// draw info displayed on the HUD
draw_sprite_part_ext(spr_health_bar, 0, 0, 0, 375*(hp_approach/hp_max), 32, 15, 15, 1, 1, health_bar_color, 1);
draw_sprite(spr_health_bar_empty, 0, 202, 31);

draw_text_f(c_white, fa_center, fa_middle, calibri_20, 450, 31, string(round(hp)) + " HP");
draw_text_f(c_white, fa_center, fa_middle, calibri_20, 550, 31, "Lives: " + string(lives_));
draw_text_f(c_white, fa_center, fa_middle, calibri_20, 960, 31, string(ceil((14400 - obj_missile_spawner.time)/120)));

draw_text_f(draw_score_color, fa_right, fa_middle, calibri_25, 1905, 31, "Score: " + thousands(round(score_approach)));
draw_text_f(c_white, fa_right, fa_middle, calibri_20, 1905, 61, "Combo: " + thousands(combo) + "x");


if (game_state != gameState.playing) {
	draw_set_alpha(0.95);
	draw_rectangle_color(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

switch (game_state) {
	case gameState.paused: {
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 960, 160, "Paused");
	}
	break;
	case gameState.died: {
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 960, 160, "Game Over");
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 960, 550, "Level " + string(level));
		draw_text_f(draw_score_color, fa_center, fa_middle, calibri_20, 960, 590, "Score: " + thousands(round(score_)));
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 960, 630, "Survived: " + string(round(obj_missile_spawner.time/120)) + " seconds");
		if (draw_score_color == color_yellow) {
			draw_text_f(color_yellow, fa_center, fa_middle, calibri_20, 960, 670, "You achieved a new highscore!");
		}
	}
	break;
	case gameState.victory: {
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 960, 160, "Level Cleared");
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 960, 550, "Level " + string(level));
		draw_text_f(draw_score_color, fa_center, fa_middle, calibri_20, 960, 590, "Score: " + thousands(round(score_)));
		if (draw_score_color == color_yellow) {
			draw_text_f(color_yellow, fa_center, fa_middle, calibri_20, 960, 630, "You achieved a new highscore!");
		}
	}
	break;
}

