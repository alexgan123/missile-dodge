if (active) {
	draw_sprite_part(spr_slider_bar, 0, 0, 0, 375*value, 20, x_min-7, y-10);
	switch (slider_type) {
		case sliderType.sfx: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x_min+180, y-50, "Sound Effects: " + string(percentage) + "%");
		}
		break;
		case sliderType.music: {
			draw_text_f(c_white, fa_center, fa_middle, calibri_20, x_min+180, y-50, "Music: " + string(percentage) + "%");
		}
		break;
	}
	
	draw_sprite(spr_slider_bar_empty, 0, x_min+180, y);
	draw_self();
}
