if ((obj_menu_manager.menu_state == menu_state)) {
	if (global.player_icon != icon) {
		audio_play_sound(snd_select, 0, false);
		global.player_icon = icon;
		ini_open("save.ini");
		ini_write_real("player", "icon", global.player_icon);
		ini_close();
	}
}
