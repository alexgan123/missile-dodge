// draw text and button only if button is active, otherwise draw nothing.
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
			var _str = (global.highscore[level] > 0 ? thousands(global.highscore[level]) : "")
			if (global.highscore[level] >= global.max_score[level]) draw_text_f(color_green, fa_center, fa_middle, calibri_20, x, y-60, _str);
			else draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-60, _str);
		}
		break;
		case buttonType.toggle_fullscreen: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-70, "Fullscreen: " + (global.options_fullscreen ? "Enabled" : "Disabled"));
		}
		break;
		case buttonType.toggle_vsync: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-70, "VSync: " + (global.options_vsync ? "Enabled" : "Disabled"));
		}
		break;
	}
}

