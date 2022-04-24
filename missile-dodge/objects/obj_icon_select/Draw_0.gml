// draw the word "selected" if the player icon is selected
if (obj_menu_manager.menu_state == menu_state) {
	draw_self();
	if (global.player_icon == icon) {
		draw_text_f(color_yellow, fa_center, fa_middle, calibri_20, x, y+75, "Selected");
	}
}
