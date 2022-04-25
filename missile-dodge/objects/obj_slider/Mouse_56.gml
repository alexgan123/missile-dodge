if (active) {
	if (selected) {
		switch (slider_type) {
			// update global.options, and update the ini file
			case sliderType.sfx: {
				global.options_sfx = percentage;
				update_volume();
				ini_open("save.ini");
				ini_write_real("options", "sfx", global.options_sfx);
				ini_close();
				x = x_min + 360*(global.options_sfx / 100);
			}
			break;
			case sliderType.music: {
				global.options_music = percentage;
				update_volume();
				ini_open("save.ini");
				ini_write_real("options", "music", global.options_music);
				ini_close();
				x = x_min + 360*(global.options_music / 100);
			}
			break;
		}
		audio_play_sound(snd_select, 0, false);
	}
	selected = false;
}
