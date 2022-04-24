if (obj_menu_manager.menu_state == menu_state) {
	draw_self();

	if (selected) {
		draw_text_f(c_black, fa_center, fa_middle, calibri_25, x, y, text);

		if (line) {
			draw_sprite(spr_spacer, 0, x + (string_width(text)/2), y);
		}
	}
	else {
		draw_text_f(color_blue, fa_center, fa_middle, calibri_25, x, y, "Click here to edit");
	}

	draw_set_alpha(alpha);
	draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y+70, prompt);
	draw_set_alpha(1);
}
