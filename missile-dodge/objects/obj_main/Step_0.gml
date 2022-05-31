// calculate time played in hours/minutes/seconds
global.stats_time_played_hours = global.stats_time_played div 3600;
global.stats_time_played_minutes = (global.stats_time_played mod 3600) div 60;
global.stats_time_played_seconds = (global.stats_time_played mod 3600) mod 60;

// Delta time variable
// Everything in the game that changes over time MUST have that change multiplied by a factor of global.delta
// so that the rate of change is independent of the current framerate.

// Example:
// In the step event, to make "x" increase by 100 per second:
// x += 100 * global.delta;

// In the step event, to make "timer" decrease by 1 per second:
// timer -= global.delta;

// global.delta should be used for any kind of movement, where x and y coordinates change over time
// global.delta should also be used for timers, so that the timer decreases at a rate of 1 per second

// do not use built in alarms (alarm[0], etc)
global.delta = delta_time*1.5/(1000000);
