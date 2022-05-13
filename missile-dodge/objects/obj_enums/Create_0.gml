// creates all the enums that are used throughout the game

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
	playing = 0, // currently playing through the game
	paused = 1, // game is paused
	died = 2, // player ran out of lives
	victory = 3 // player survived until the end
}

// define the different types of buttons
enum buttonType {
	change_menu_state = 0, // used to move around menus
	exit_game = 1, // exits the game
	toggle_damage_indicators = 2, // options - toggle damage indicators
	toggle_particles = 3, // options - toggle particles
	change_player_name = 4, // change player name
	start_game = 5, // main menu - start new game
	continue_ = 6, // continue a paused game
	restart = 7, // restart a paused game
	back_to_menu = 8 // go back to menu
}

// define the different types of sliders
enum sliderType {
	sfx = 0,
	music = 1,
	fps_ = 2
}

// define different types of missiles
// regular and small missiles travel in a straight line without changing speed.
// speedy missiles travel in straight line and accelerate.
// exploding missiles quickly burst into projectiles that fan out
// scatter missiles burst into 4 projectiles 
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

// macro for how many frames are in 1 second
#macro s 144

