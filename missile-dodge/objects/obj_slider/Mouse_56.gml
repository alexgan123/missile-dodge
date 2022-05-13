if (active) {
	if (selected) {
		slider_apply_value();
		audio_play_sound(snd_select, 0, false);
	}
	selected = false;
}
