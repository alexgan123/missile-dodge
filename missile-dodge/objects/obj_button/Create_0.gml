// Button properties

text = ""; // text displayed on the button
sprite_index = spr_button_blue; // color and size of the button
button_type_ = buttonType.change_menu_state; // what the button does
// which state the button is active on, can be set to a menuState or a gameState.
active_state = menuState.first_start; 


// Button's sub properties

// what will the state change to after pressing this button?
// Note that change_player_name button will ALSO change menu state.
destination_state = menuState.first_start; 

// for change_player_name buttons, the instance ID of the textbox that it pulls text input from.
linked_text_box = -1;

// for start_game buttons, the level that the button is associated with.
level = 1;

// helper variables
active = true; // whether button is active
pressable = true; // whether button can be clicked down

