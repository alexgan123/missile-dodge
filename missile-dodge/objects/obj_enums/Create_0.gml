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

// define the different types of buttons
enum buttonType {
	change_menu_state = 0, // used to move around menus
	exit_game = 1, // exits the game
	toggle_damage_indicators = 2, // options - toggle damage indicators
	toggle_particles = 3, // options - toggle particles
	change_player_name = 4, // change player name
	start_game = 5 // main menu - start new game
}
