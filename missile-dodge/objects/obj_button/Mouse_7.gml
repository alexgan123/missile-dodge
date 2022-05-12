if (active) and (pressable) {
	if (image_index == 1) {
		// button has just been pressed.
		audio_play_sound(snd_press, 0, false);
		execute_click_function();
	}
	image_index = 0;
}
