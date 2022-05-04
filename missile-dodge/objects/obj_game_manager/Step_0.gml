// determine the health bar color
if (health_bar_regen_flashing) {
	if (hp/hp_max >= 0.5) health_bar_color = make_color_rgb(51, 255, 51);
	else if (hp/hp_max >= 0.25) health_bar_color = make_color_rgb(255, 255, 51);
	else health_bar_color = make_color_rgb(255, 153, 153);;
}
else {
	if (hp/hp_max >= 0.5) health_bar_color = make_color_rgb(0, 204, 0);
	else if (hp/hp_max >= 0.25) health_bar_color = make_color_rgb(204, 204, 0);
	else health_bar_color = make_color_rgb(255, 51, 51);
}

// if the player's score goes above the current highscore, then set it to yellow
if (draw_score_color != color_yellow) {
	if (round(score_) > global.highscore[level]) {
		draw_score_color = color_yellow;
	}
	else {
		draw_score_color = c_white;
	}
}

// 0 <= hp <= hpmax
hp = clamp(hp, 0, hp_max);
// hp_approach smoothly approaches hp
hp_approach = smooth_approach(hp_approach, hp, 0.08);

// score_approach smoothly approaches score
score_approach = smooth_approach(score_approach, score_, 0.08);

// health regeneration every frame
if (regenerating) {
	hp += regen_speed;
	hp = clamp(hp, 0, hp_max);
}
