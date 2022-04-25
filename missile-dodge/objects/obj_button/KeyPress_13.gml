if (active) and (pressable) {
	// pressing the ENTER KEY is equivalent to pressing the change player name button.
	if (button_type_ == buttonType.change_player_name) {
		var _input = trim(linked_text_box.text); // player's input after trimming spaces
		if (linked_text_box.selected) {
			// Username has just entered a blank username - bad input
			if (string_length(_input) <= 0) {
				linked_text_box.new_prompt("Username cannot be blank!");
			}
			else {
				// player's input is non-empty so check if they entered their current name
				if (_input == global.player_name) {
					linked_text_box.new_prompt("Choose a different username!");
				}
				else {
					// successfully changed the player name
					linked_text_box.new_prompt("Username successfully updated.");
					global.player_name = _input;
					ini_open("save.ini");
					ini_write_string("player", "name", global.player_name);
					ini_close();
							
					// change the menu state
					// NOTE: this shouldn't change the menu state if we are on the OPTIONS menu state.
					obj_menu_manager.menu_state = destination_state;
				}
			}
		}
	}
}
