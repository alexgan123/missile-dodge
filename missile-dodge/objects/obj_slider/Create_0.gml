// Slider properties
active_state = menuState.first_start; // which state the slider is active on
slider_type = sliderType.sfx; // define which setting the slider changes

//-------- private variables

// whether player is currently clicking down on the slider head
selected = false;
value = 0;  // real number from 0-1 that represents the slider current value
percentage = 0; // integer from 1 to 100 that represents the slider's current value in %
fps_value = 0; // integer from 60-240 that represents the slider's current fps value

x_min = x - 180; // mininum x position of slider head
x_max = x + 180; // maximum x position of slider head

// these variables are used to determine if the current menu state or game state switches
if (instance_exists(obj_menu_manager)) {
	_curmenu = obj_menu_manager.menu_state;
}
else {
	_curmenu = -1;
}
_prevmenu = _curmenu;

if (instance_exists(obj_game_manager)) {
	_curgame = obj_game_manager.game_state;
}
else {
	_curgame = -1;
}
_prevgame = _curgame;

// set the initial x position based off the data from save file
alarm[0] = 2;

// function that takes the current value of the slider
// and updates the corresponding global.options variable and saves it to INI file.
function slider_apply_value() {
	switch (slider_type) {
		// update global.options, and update the ini file
		case sliderType.sfx: {
			global.options_sfx = percentage;
			update_volume();
			ini_open("save.ini");
			ini_write_real("options", "sfx", global.options_sfx);
			ini_close();
		}
		break;
		case sliderType.music: {
			global.options_music = percentage;
			update_volume();
			ini_open("save.ini");
			ini_write_real("options", "music", global.options_music);
			ini_close();
		}
		break;
		case sliderType.fps_: {
			global.options_fps = fps_value;
			update_game_speed();
			ini_open("save.ini");
			ini_write_real("options", "fps", global.options_fps);
			ini_close();
		}
		break;
	}
}
