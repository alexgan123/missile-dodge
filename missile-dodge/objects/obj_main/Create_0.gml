// randomise the game
randomise();

// set utc time
date_set_timezone(timezone_utc);

// keyboard mapping allows player to move with WASD
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

// the level that was inputted in the level select screen of rm_menu.
global.rm_menu_level_input = 1;

// delta time variable, used to increment values every step
global.delta = delta_time/1000000;

// options, highscore and other variables initialization
ini_open("save.ini");

// write the default values for options in the ini file if they don't already exist
if (!ini_key_exists("options", "sfx")) {
	ini_write_real("options", "sfx", 100);
}
if (!ini_key_exists("options", "music")) {
	ini_write_real("options", "music", 100);
}
if (!ini_key_exists("options", "particles")) {
	ini_write_real("options", "particles", true);
}
if (!ini_key_exists("options", "damage_indicators")) {
	ini_write_real("options", "damage_indicators", true);
}
if (!ini_key_exists("options", "fps")) {
	ini_write_real("options", "fps", 144);
}
if (!ini_key_exists("options", "fullscreen")) {
	ini_write_real("options", "fullscreen", false);
}
if (!ini_key_exists("options", "vsync")) {
	ini_write_real("options", "vsync", false);
}

// write default game level to ini file
if (!ini_key_exists("game", "level")) {
	ini_write_real("game", "level", 1);
}

// write default highscores to ini file
for (var i = 1; i <= 15; i++) {
	if (!ini_key_exists("highscore", string(i))) {
		ini_write_real("highscore", string(i), 0);
	}
}

// write default stats to ini file (default value is 0)
if (!ini_key_exists("stats", "time_played")) {
	ini_write_real("stats", "time_played", 0);
}
if (!ini_key_exists("stats", "missiles_dodged")) {
	ini_write_real("stats", "missiles_dodged", 0);
}
if (!ini_key_exists("stats", "deaths")) {
	ini_write_real("stats", "deaths", 0);
}
if (!ini_key_exists("stats", "powerups_collected")) {
	ini_write_real("stats", "powerups_collected", 0);
}
if (!ini_key_exists("stats", "coins_collected")) {
	ini_write_real("stats", "coins_collected", 0);
}

// write default player data to ini
if (!ini_key_exists("player", "icon")) {
	ini_write_real("player", "icon", 0);
}
if (!ini_key_exists("player", "name")) {
	ini_write_string("player", "name", "");
}

// load the variables from the ini file into global variables in memory
global.options_sfx = ini_read_real("options", "sfx", 100); // how loud sound effects will be (0-100%)
global.options_music = ini_read_real("options", "music", 100); // how loud music will be (0-100%)
global.options_particles = ini_read_real("options", "particles", true); // whether particle effects are displayed
global.options_damage_indicators = ini_read_real("options", "damage_indicators", true); // whether damage numbers show up when player gets hit
global.options_fps = ini_read_real("options", "fps", 144);
global.options_fullscreen = ini_read_real("options", "fullscreen", false);
global.options_vsync = ini_read_real("options", "vsync", false);

global.game_level = ini_read_real("game", "level", 1); // highest level unlocked

global.highscore[0] = 0;
for (var i = 1; i <= 15; i++) {
	global.highscore[i] = ini_read_real("highscore", string(i), 0); // highscore for each level
}

global.stats_time_played = ini_read_real("stats", "time_played", 0); // time played in seconds
global.stats_missiles_dodged = ini_read_real("stats", "missiles_dodged", 0); // total missiles dodged
global.stats_deaths = ini_read_real("stats", "deaths", 0); // total times player lost a life
global.stats_powerups_collected = ini_read_real("stats", "powerups_collected", 0); // total powerups collected
global.stats_coins_collected = ini_read_real("stats", "coins_collected", 0); // coins collected

global.player_icon = ini_read_real("player", "icon", 0); // currently selected player icon (0-4)
global.player_name = ini_read_string("player", "name", ""); // player name


// fix variables in case save data contains invalid values

// Fix options
if (global.options_sfx < 0) {global.options_sfx = 0; ini_write_real("options", "sfx", global.options_sfx);}
else if (global.options_sfx > 100) {global.options_sfx = 100; ini_write_real("options", "sfx", global.options_sfx);}

if (global.options_music < 0) {global.options_music = 0; ini_write_real("options", "music", global.options_music);}
else if (global.options_music > 100) {global.options_music = 100; ini_write_real("options", "music", global.options_music);}

if (global.options_fps < 60) {global.options_fps = 60; ini_write_real("options", "fps", global.options_fps);}
else if (global.options_fps > 240) {global.options_fps = 240; ini_write_real("options", "fps", global.options_fps);}

if (global.options_particles != true) and (global.options_particles != false) {global.options_particles = true; ini_write_real("options", "particles", global.options_particles);}

if (global.options_damage_indicators != true) and (global.options_damage_indicators != false) {global.options_damage_indicators = true; ini_write_real("options", "damage_indicators", global.options_damage_indicators);}

if (global.options_fullscreen != true) and (global.options_fullscreen != false) {global.options_fullscreen = false; ini_write_real("options", "fullscreen", global.options_fullscreen);}

if (global.options_vsync != true) and (global.options_vsync != false) {global.options_vsync = false; ini_write_real("options", "vsync", global.options_vsync);}

// Fix game level
if (global.game_level < 1) {global.game_level = 1; ini_write_real("game", "level", global.game_level);}
else if (global.game_level > 16) {global.game_level = 16; ini_write_real("game", "level", global.game_level);}

// Fix highscores
for (var i = 1; i <= 15; i++) {
	if (global.highscore[i] > global.max_score[i]) {
		global.highscore[i] = global.max_score[i];
		ini_write_real("highscore", string(i), global.highscore[i]);
	}
	else if (global.highscore[i] < 0) {
		global.highscore[i] = 0;
		ini_write_real("highscore", string(i), global.highscore[i]);
	}
}

// Fix stats
if (global.stats_time_played < 0) {global.stats_time_played = 0; ini_write_real("stats", "time_played", global.stats_time_played);}
if (global.stats_missiles_dodged < 0) {global.stats_missiles_dodged = 0; ini_write_real("stats", "missiles_dodged", global.stats_missiles_dodged);}
if (global.stats_deaths < 0) {global.stats_deaths = 0; ini_write_real("stats", "deaths", global.stats_deaths);}
if (global.stats_powerups_collected < 0) {global.stats_powerups_collected = 0; ini_write_real("stats", "powerups_collected", global.stats_powerups_collected);}
if (global.stats_coins_collected < 0) {global.stats_coins_collected = 0; ini_write_real("stats", "coins_collected", global.stats_coins_collected);}

// Fix player icon
if (global.player_icon != 0) and 
(global.player_icon != 1) and 
(global.player_icon != 2) and 
(global.player_icon != 3) and 
(global.player_icon != 4) {
	global.player_icon = 0;
	ini_write_real("player", "icon", global.player_icon);
}
ini_close();

// Apply the effect of various options in game
update_game_speed();
update_fullscreen();
update_vsync();

// send data
data_send_login();
