if (active) {
	if (image_index == 1) {
		// button has just been pressed.
		audio_play_sound(snd_press, 0, false);
		switch (button_type_) {
			// execute stuff based on the button type
			case buttonType.change_menu_state: {
				// change state to button's destination.
				if (instance_exists(obj_menu_manager)) obj_menu_manager.menu_state = destination_state;
			}
			break;
			case buttonType.change_player_name: {
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
			break;
			case buttonType.exit_game: {
				// exit game
				game_end();
			}
			break;
			case buttonType.start_game: {
				global.transfer = level;
				room_goto(rm_game);
			}
			break;
			case buttonType.toggle_damage_indicators: {
				// toggle damage indicators, and update it in ini file
				global.options_damage_indicators = !global.options_damage_indicators;
				ini_open("save.ini");
				ini_write_real("options", "damage_indicators", global.options_damage_indicators);
				ini_close();
			}
			break;
			case buttonType.toggle_particles: {
				// toggle particles, and update it in ini file
				global.options_particles = !global.options_particles;
				ini_open("save.ini");
				ini_write_real("options", "particles", global.options_particles);
				ini_close();
			}
			break;
			case buttonType.continue_: {
				if (instance_exists(obj_game_manager)) {
					obj_game_manager.game_state = gameState.playing;	
				}
			}
			break;
			case buttonType.restart: {
				room_restart();
			}
			break;
			case buttonType.back_to_menu: {
				room_goto(rm_menu);
			}
			break;
		}
	}
	image_index = 0;
}
