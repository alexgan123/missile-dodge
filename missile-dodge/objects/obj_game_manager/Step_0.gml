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

// if the player's score goes above the current highscore,
// then set it to yellow for the rest of the game
if (draw_score_color != color_yellow) {
	if (round(score_) > global.highscore[level]) {
		draw_score_color = color_yellow;
	}
	else {
		draw_score_color = c_white;
	}
}

// 0 <= hp <= hpmax
// This should be called every time hp changes.
hp = clamp(hp, 0, hp_max);

// hp_approach smoothly approaches hp
hp_approach = smooth_approach(hp_approach, hp, 7*global.delta);

// score_approach smoothly approaches score
score_approach = smooth_approach(score_approach, score_, 7*global.delta);

// health regeneration every frame
if (regenerating) {
	hp += regen_speed*global.delta;
	hp = clamp(hp, 0, hp_max);
}

// Alarms
// Subtract all alarms by 1 per second.
if (alarm0 > 0) alarm0 -= global.delta;
if (alarm1 > 0) alarm1 -= global.delta;
if (alarm2 > 0) alarm2 -= global.delta;
if (alarm3 > 0) alarm3 -= global.delta;
if (alarm4 > 0) alarm4 -= global.delta;
if (alarm5 > 0) alarm5 -= global.delta;

// reset regen speed
if (alarm0 <= 0) {
	regen_speed = 12;
}

// flash the healthbar if the "rapid regeneration" powerup is active
if (alarm1 <= 0) {
	if (regen_speed > 12) {
		health_bar_regen_flashing = !health_bar_regen_flashing;
		if (health_bar_regen_flashing) alarm1 = 0.07;
		else alarm1 = 0.15;
	}
	else {
		health_bar_regen_flashing = false;
		alarm1 = 0.01;
	}	
}

// reset damage reudction
if (alarm2 <= 0) {
	damage_reduction = 0;
}

// enable hp regeneration again
if (alarm3 <= 0) {
	regenerating = true;
}

// disable invulnerability again
if (alarm4 <= 0) {
	immune = false;	
}

// enable player visibility again.
if (alarm5 <= 0) {
	player_visible = true;	
}
