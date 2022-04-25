// draw text only if the current state matches with the state of the button.
if (active) {
	draw_self();
	var _offset = 0; 
	if (image_index == 1) _offset = 5;
	draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-3+_offset, text);
	
	switch (button_type_) {
		case buttonType.toggle_particles: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-70, "Particles: " + (global.options_particles ? "Enabled" : "Disabled"));
		}
		break;
		case buttonType.toggle_damage_indicators: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-70, "Damage Indicators: " + (global.options_damage_indicators ? "Enabled" : "Disabled"));
		}
		break;
		case buttonType.start_game: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-60, (global.highscore[level] > 0 ? thousands(global.highscore[level]) : ""));
		}
		break;
	}
}

