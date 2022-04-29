time++;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		switch (time) {
			case 1*s: {
				show_notification_game("Use Arrow Keys/WASD to avoid missiles");
			}
			break;
			case 2*s: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 3*s: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 4*s: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 5*s: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 6*s: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 7*s: {
				spawn_missile(missileType.regular, 0, px, 0, down);
			}
			break;
			case 8*s: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 9*s: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 10*s: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 11*s: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 12*s: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 13*s: {
				spawn_missile(missileType.regular, 0, px, room_height, up);
			}
			break;
			case 14*s: {
				spawn_missile(missileType.regular, 0, 0, py, right);
			}
			break;
			case 15*s: {
				spawn_missile(missileType.regular, 1, 0, py, right);
			}
			break;
			case 16*s: {
				spawn_missile(missileType.regular, 2, 0, py, right);
			}
			break;
			case 17*s: {
				spawn_missile(missileType.regular, 0, room_width, py, left);
			}
			break;
			case 18*s: {
				spawn_missile(missileType.regular, 1, room_width, py, left);
			}
			break;
			case 19*s: {
				spawn_missile(missileType.regular, 2, room_width, py, left);
			}
			break;
			case 20*s: {
				show_notification_game("Collect powerups to help you survive longer");	
			}
			break;
			case 21*s: {
				spawn_powerup(powerupType.shield, room_width*0.4, room_height*0.4);
			}
			break;
			
		}
	}
	break;
}
