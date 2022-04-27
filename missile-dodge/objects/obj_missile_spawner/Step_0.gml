time++;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		switch (time) {
			case 60: spawn_missile(missileType.regular, 0, 0, py, right);
			break;
			case 120: spawn_missile(missileType.regular, 1, 0, py, right);
			break;
			case 180: {
				show_notification_game("Use Arrow Keys/WASD to avoid missiles");
			}
			break;
			case 360: {
				show_notification_game("Collect powerups to help you survive longer");
			}
			break;
			case 540: {
				show_notification_game("Collect coins to increase your score");
			}
			break;
			case 1200: {
				show_notification_game("Collect bruhs");
				show_notification_powerup(powerupType.regen);
			}
			break;
		}
	}
	break;
}
