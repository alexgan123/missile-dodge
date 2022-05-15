// randomise the game
randomise();
// set fullscreen
window_set_size(display_get_width(), display_get_height());
//window_set_fullscreen(true);

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

global.game_level = ini_read_real("game", "level", 1); // highest level unlocked

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

ini_close();

// update the game FPS to match global.options_fps
update_game_speed();
