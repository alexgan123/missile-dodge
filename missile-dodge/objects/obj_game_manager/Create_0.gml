// Game manager manages the GAME STATE as well as most variables in the game

// the current game state
game_state = gameState.playing;
// level that is currently playing
level = global.rm_menu_level_input;

// current health (real number)
hp = 500;
// max health (real number)
hp_max = hp; 
// value that approaches hp 
hp_approach = hp;
// current lives - when this reaches 0, player loses.
lives_ = 3;

// current score (real number)
score_ = 0;
// value that approaches score
score_approach = score_;
// current combo
combo = 0;



// current damage reduction
damage_reduction = 0;

// current regen speed
regen_speed = 12;
// whether player is currently regenerating
regenerating = true;
// whether player is currently immune to damage
immune = false;

// whether player is currently visible or not
player_visible = true;

health_bar_color = make_color_rgb(0, 204, 0); // color of the filled health bar
health_bar_regen_flashing = false; // flash the health bar if regenerating quickly

// color of the drawn score
draw_score_color = c_white;

// alarms
alarm0 = 0;
alarm1 = 0;
alarm2 = 0;
alarm3 = 0;
alarm4 = 0;
alarm5 = 0;

