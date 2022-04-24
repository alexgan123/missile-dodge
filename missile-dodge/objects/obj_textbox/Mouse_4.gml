if (obj_menu_manager.menu_state == menu_state) {
	if (!selected) {
		selected = true;
		// important: when selecting the textbox, make sure
		// text and keyboard_string are both reset
		text = "";
		keyboard_string = "";
	}
}
