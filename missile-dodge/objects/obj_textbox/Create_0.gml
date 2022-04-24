// whether the textbox responds to keyboard input or not
selected = false;
// max width of text inside text box
max_width = 300;
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

// the menu state that the textbox is shown on
menu_state = menuState.first_start; 

// method that sets a new prompt, stays for 2 secs then fades in 1 sec
function new_prompt(str) {
	prompt = str;
	can_lose_alpha = false;
	alpha = 1;
	alarm[1] = 240;
}
