// initialize the x position of the slider head from the save file
// Note that this is done slightly after it gets created,
// because it is dependent on a variable to be initialized
switch(slider_type) {
	case sliderType.sfx:
	x = x_min + 360*(global.options_sfx / 100);
	break;
	case sliderType.music:
	x = x_min + 360*(global.options_music / 100);
	break;
}
