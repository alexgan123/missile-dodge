// Slider properties
active_state = menuState.first_start; // which state the slider is active on
slider_type = sliderType.sfx; // define which setting the slider changes


// whether player is currently clicking down on the slider head
selected = false;
value = 0;  // real number from 0-1 that represents the slider current value
percentage = 0; // integer from 1 to 100 that represents the slider's current value in %
x_min = x - 180; // mininum x position of slider head
x_max = x + 180; // maximum x position of slider head

// set the initial x position based off the data from save file
alarm[0] = 1;
