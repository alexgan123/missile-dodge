// draw the text on the button only if it is on the correct menu state
if (obj_menu_manager.menu_state == menu_state) {
	draw_self();
	var _offset = 0; 
	if (image_index == 1) _offset = 5;
	draw_text_f(c_white, fa_center, fa_middle, calibri_20, x, y-3+_offset, text);
}

