time++;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		switch (time) {
			case 1*s: {
				show_notification_game("Use Arrow Keys/WASD to avoid missiles");
			}
			break;
			#region section 1
			case 3*s: {
				spawn_missile_regular_left(0);
			}
			break;
			case 4*s: {
				spawn_missile_regular_left(0);
			}
			break;
			case 5*s: {
				spawn_missile_regular_left(0);
			}
			break;
			case 6*s: {
				spawn_missile_regular_top(0);
			}
			break;
			case 7*s: {
				spawn_missile_regular_top(0);
			}
			break;
			case 8*s: {
				spawn_missile_regular_top(0);
			}
			break;
			case 9*s: {
				spawn_missile_regular_right(0);
			}
			break;
			case 10*s: {
				spawn_missile_regular_right(0);
			}
			break;
			case 11*s: {
				spawn_missile_regular_right(0);
			}
			break;
			case 12*s: {
				spawn_missile_regular_bottom(0);
			}
			break;
			case 13*s: {
				spawn_missile_regular_bottom(0);
			}
			break;
			case 14*s: {
				spawn_missile_regular_bottom(0);
			}
			break;
			case 16*s: {
				spawn_missile_regular_left(0);
			}
			break;
			case 17*s: {
				spawn_missile_regular_left(1);
			}
			break;
			case 18*s: {
				spawn_missile_regular_left(2);
			}
			break;
			case 19*s: {
				spawn_missile_regular_right(0);
			}
			break;
			case 20*s: {
				spawn_missile_regular_right(1);
			}
			break;
			case 21*s: {
				spawn_missile_regular_right(2);
			}
			break;
			#endregion
			#region section 2
			case 23*s: {
				show_notification_game("Collect powerups to help you survive longer");	
			}
			break;
			case 25*s: {
				spawn_powerup(powerupType.shield, room_width*0.4, room_height*0.4);
			}
			break;
			case 25*s+36: {
				spawn_powerup(powerupType.life, room_width*0.6, room_height*0.4);
			}
			break;
			case 25*s+72: {
				spawn_powerup(powerupType.regen, room_width*0.5, room_height*0.6);
			}
			break;
			#endregion
		}
	}
	break;
}
