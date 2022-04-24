// calculate time played in hours/minutes/seconds
global.stats_time_played_hours = global.stats_time_played div 3600;
global.stats_time_played_minutes = (global.stats_time_played mod 3600) div 60;
global.stats_time_played_seconds = (global.stats_time_played mod 3600) mod 60;
