// draw the current fps at the highest depth so it will always render on top of everything
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 1060, string(fps) + " FPS");

if (room == rm_menu) draw_text_f(c_white, fa_right, fa_bottom, calibri_25, 1900, 1060, "missile-dodge-1.0");
else if (room == rm_game) draw_text_f(c_white, fa_right, fa_bottom, calibri_25, 1900, 1060, "Level " + string(obj_game_manager.level));

if (obj_music.audio_testing) draw_text_f(color_blue, fa_right, fa_bottom, calibri_25, 1900, 1010, "Audio Testing On");

// debug draw (comment out when not in use)

//draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 200, 1060, string(instance_count) + " instance_count");


draw_text_f(c_white, fa_left, fa_bottom, calibri_15, 20, 1010, "sfx music particles dmgind fps " + 
string(global.options_sfx) + " " + string(global.options_music) + " " + 
string(global.options_particles) + " " + string(global.options_damage_indicators) + " "
+ string(global.options_fps));

draw_text_f(c_white, fa_left, fa_bottom, calibri_15, 20, 970, "game_level " + 
string(global.game_level));

var _hs = "";
for (var i = 1; i <= 10; i++) {
	_hs += string(global.highscore[i]) + " ";
}

draw_text_f(c_white, fa_left, fa_bottom, calibri_15, 20, 930, "global.highscore[i] " + _hs);
draw_text_f(c_white, fa_left, fa_bottom, calibri_15, 20, 890, "stats tp md d pc cc " + 
string(global.stats_time_played) + " " + string(global.stats_missiles_dodged) + " " + 
string(global.stats_deaths) + " " + string(global.stats_powerups_collected) + " " 
+ string(global.stats_coins_collected) + " " );

draw_text_f(c_white, fa_left, fa_bottom, calibri_15, 20, 850, "playericonandname " + 
string(global.player_icon) + " " + global.player_name);


