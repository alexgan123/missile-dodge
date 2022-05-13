// This controller manages the music throughout the game and initializes audio

// load audio groups 
audio_group_load(Music);
audio_group_load(SFX);

// set to volumes in game to reflect the values of the global.options variables
update_volume();

// audio testing mode
audio_testing = false;
