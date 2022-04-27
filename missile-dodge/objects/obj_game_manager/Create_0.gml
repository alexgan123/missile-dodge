// Game manager manages the GAME STATE as well as most variables in the game

// the current game state
game_state = gameState.playing;
// level that is currently playing
level = global.transfer;

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

// helper variables (shouldn't be changed manually)
health_bar_color = make_color_rgb(0, 204, 0); // color of the filled health bar


