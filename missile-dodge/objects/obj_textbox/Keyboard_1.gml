if (obj_menu_manager.menu_state == menu_state) {
	if (selected) {
		// update the text in the textbox as long as the typed characters don't exceed max width
		if (string_width(keyboard_string) < max_width) {
			text = keyboard_string;
		}
		else {
			keyboard_string = text;
		}
	}
}
