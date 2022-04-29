// Textbox properties
// the menu state that the textbox is shown on
active_state = menuState.first_start;

// Helper variables
// whether the textbox responds to keyboard input or not
selected = false;
// max characters of text inside text box
max_width = 16;
// text currently drawn inside text box
text = "";
keyboard_string = "";
// error prompts that are displayed below the textbox
prompt = "";
can_lose_alpha = true;
alpha = 0;
// line blinking for the text box
line = true;
alarm[0] = 50;
active = true; // whether textbox is currently active
// method that sets a new prompt for the textbox
function new_prompt(str) {
	prompt = str;
	can_lose_alpha = false;
	alpha = 1;
	alarm[1] = 240;
}
