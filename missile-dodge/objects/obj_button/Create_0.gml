// Button properties

text = ""; // text displayed on the button
sprite_index = spr_button_blue; // color and size of the button
button_type_ = buttonType.change_menu_state; // what the button does
menu_state = menuState.first_start; // which menu state the button is active on

// Button's sub properties

// what will the state change to after pressing this button?
// Note that change_player_name button will ALSO change menu state.
destination_state = menuState.first_start; 

// if button_type = change_player_name, then which textbox should it pull text input from?
// this variable should contain an instance ID.
linked_text_box = -1;



