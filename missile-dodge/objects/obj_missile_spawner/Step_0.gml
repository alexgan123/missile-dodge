time++;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		switch (time) {
			case 120: {
				show_notification_game("Use Arrow Keys/WASD to avoid missiles");
			}
			break;
			case 360: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 480: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 600: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 720: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 840: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 960: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 1080: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 1200: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 1320: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 1440: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 1560: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 1680: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 2040: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 2160: {
				spawn_missile(missileType.regular, 1, 0, py, right);
			}
			break;
			case 2280: {
				spawn_missile(missileType.regular, 2, 0, py, right);
			}
			break;
			case 2400: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 2520: {
				spawn_missile(missileType.regular, 1, room_width, py, left);
			}
			break;
			case 2640: {
				spawn_missile(missileType.regular, 2, room_width, py, left);
			}
			break;
			case 2880: {
				show_notification_game("Collect powerups to help you survive longer");	
			}
			break;
			case 3000: {
				spawn_powerup(powerupType.shield, 120, 120);
			}
			break;
			
		}
	}
	break;
}
