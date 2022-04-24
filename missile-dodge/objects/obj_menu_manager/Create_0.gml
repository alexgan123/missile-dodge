// this object stores the current menu state.
// if player joins for the first time, start in the "first_start" menustate
// otherwise start in the "start" menustate
if (global.player_name == "") {
	menu_state = menuState.first_start;
}
else {
	menu_state = menuState.start;	
}

