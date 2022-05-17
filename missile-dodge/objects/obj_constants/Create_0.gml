// creates all the enums/constants that are used throughout the game

// current menu that the player is on
enum menuState {
	first_start = 0, // player joins for the first time
	start = 1, // starting screen
	options = 2, // options menu
	how_to_play = 3, // how to play menu
	level_select = 4, // level select menu
	profile = 5 // profile menu
}

// current game state that the player is on
enum gameState {
	playing, // currently playing through the game
	paused, // game is paused
	options, // game options menu
	died, // player ran out of lives
	victory, // player survived until the end
}

// define the different types of buttons
enum buttonType {
	change_menu_state, // used to move around menus.
	exit_game, // exits the game
	toggle_damage_indicators, // options - toggle damage indicators
	toggle_particles, // options - toggle particles
	toggle_fullscreen, 
	toggle_vsync,
	change_player_name, // change player name
	start_game, // main menu - start new game (level select button)
	change_game_state, // used to move around game menus.
	restart, // restart a paused game
	back_to_menu // go back to menu
}

// define the different types of sliders
enum sliderType {
	sfx = 0,
	music = 1,
	fps_ = 2
}

// define different types of missiles
enum missileType {
	regular = 0,
	small = 1,
	speedy = 2,
	homing = 3,
	exploding = 4,
	scatter = 5,
}

// define different types of powerups
enum powerupType {
	life = 0, // extra life
	regen = 1, // gives regen for a few seconds
	shield = 2 // gives damage reduction for a few seconds
}

// MACROS
// color macros
#macro color_red make_colour_rgb(255, 80, 80)
#macro color_orange make_colour_rgb(255, 153, 51)
#macro color_yellow make_colour_rgb(255, 255, 102)
#macro color_green make_colour_rgb(102, 255, 102)
#macro color_blue make_colour_rgb(102, 178, 255)
#macro color_purple make_colour_rgb(255, 51, 255)

// speed multiplier for vertical missiles
#macro vertical_multiplier 0.5625

// macro for player x and player y
#macro px obj_player.x
#macro py obj_player.y

// macro for room width and room height
#macro rw room_width
#macro rh room_height

// macro for 4 cardinal directions
#macro right 0
#macro up 90
#macro left 180
#macro down 270
