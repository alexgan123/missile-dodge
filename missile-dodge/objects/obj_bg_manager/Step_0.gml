// manages the speed of the backgrounds throughout the game
if (room == rm_menu) {
	layer_hspeed("menu_background_1", 170*global.delta);
	layer_hspeed("menu_background_2", 80*global.delta);
}
else if (room == rm_game) {
	layer_hspeed("game_background_1", 28*global.delta);
	layer_hspeed("game_background_2", 56*global.delta);
}
