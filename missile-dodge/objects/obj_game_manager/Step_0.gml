// determine the health bar color
if (hp/hp_max >= 0.5) health_bar_color = make_color_rgb(0, 204, 0);
else if (hp/hp_max >= 0.25) health_bar_color = color_yellow;
else health_bar_color = color_red;

// hp_approach smoothly approaches hp
hp_approach = smooth_approach(hp_approach, hp, 0.08);

// score_approach smoothly approaches score
score_approach = smooth_approach(score_approach, score_, 0.08);

