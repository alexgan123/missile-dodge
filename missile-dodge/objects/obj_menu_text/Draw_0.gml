switch (obj_menu_manager.menu_state) {
	case menuState.first_start: {
		draw_text_f(c_white, fa_center, fa_middle, calibri_30, 960, 300, "Welcome to Missile Dodge!");
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 960, 350, "Enter your player name below:");
	}
	break;
	case menuState.start: {
	}
	break;
	case menuState.profile: {
		draw_text_f(c_white, fa_center, fa_middle, calibri_25, 960, 250, global.player_name + "'s Profile");
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 850, 340, "Change Name");
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 700, 590, "Change Player Icon");
		
		draw_text_f(c_white, fa_center, fa_middle, calibri_25_bold, 1380, 590, "Statistics");
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 1380, 650, "Time Played: " + string(global.stats_time_played_hours) + "h " + string(global.stats_time_played_minutes) + "m " + string(global.stats_time_played_seconds) + "s");
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 1380, 700, "Missiles Dodged: " + thousands(global.stats_missiles_dodged));
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 1380, 750, "Powerups Collected: " + thousands(global.stats_powerups_collected));
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 1380, 800, "Coins Collected: " + thousands(global.stats_coins_collected));
		draw_text_f(c_white, fa_center, fa_middle, calibri_20, 1380, 850, "Deaths: " + thousands(global.stats_deaths));
	}
	break;
	case menuState.level_select: {
		
	}
	break;
	case menuState.options: {
		
	}
	break;
}
