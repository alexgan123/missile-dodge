// if can_lose_alpha, then make the text slowly fade out
if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/120);
	}
	else {
		prompt = "";	
	}
}

// if the current menu state is not the correct one, 
// textbox should never be selected.
if (obj_menu_manager.menu_state != menu_state) {
	selected = false;
	prompt = "";
	can_lose_alpha = true;
	alpha = 0;
	alarm[1] = -1;
}
