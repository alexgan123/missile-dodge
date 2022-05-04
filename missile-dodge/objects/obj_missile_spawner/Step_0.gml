time++;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		switch (time) {
			case 1*s: {show_notification_game("Use Arrow Keys/WASD to avoid missiles");} break;
			#region section 1
			case 3*s: {spawn_missile_regular_left(0);} break;
			case 4*s: {spawn_missile_regular_left(0);} break;
			case 5*s: {spawn_missile_regular_left(0);} break;
			case 6*s: {spawn_missile_regular_top(0);} break;
			case 7*s: {spawn_missile_regular_top(0);} break;
			case 8*s: {spawn_missile_regular_top(0);} break;
			case 9*s: {spawn_missile_regular_right(0);} break;
			case 10*s: {spawn_missile_regular_right(0);} break;
			case 11*s: {spawn_missile_regular_right(0);} break;
			case 12*s: {spawn_missile_regular_bottom(0);} break;
			case 13*s: {spawn_missile_regular_bottom(0);} break;
			case 14*s: {spawn_missile_regular_bottom(0);} break;
			case 16*s: {spawn_missile_regular_left(0);} break;
			case 17*s: {spawn_missile_regular_left(1);} break;
			case 18*s: {spawn_missile_regular_left(2);} break;
			case 19*s: {spawn_missile_regular_right(0);} break;
			case 20*s: {spawn_missile_regular_right(1);} break;
			case 21*s: {spawn_missile_regular_right(2);} break;
			#endregion
			#region section 2
			case 23*s: {show_notification_game("Collect powerups to help you survive longer");} break;
			case 25*s: {spawn_powerup(powerupType.shield, rw*0.3, rh*0.7);} break;
			case 25*s+36: {spawn_powerup(powerupType.life, rw*0.5, rh*0.7);} break;
			case 25*s+72: {spawn_powerup(powerupType.regen, rw*0.7, rh*0.7);} break;
			case 27*s: {spawn_missile_regular_left(0); spawn_missile_regular_right(0);} break;
			case 28*s: {spawn_missile_regular_left(0); spawn_missile_regular_right(0);} break;
			case 29*s: {spawn_missile_regular_left(1);} break;
			case 30*s: {spawn_missile_regular_right(1);} break;
			case 32*s: {spawn_missile_regular_left(0); spawn_missile_regular_right(0);} break;
			case 33*s: {spawn_missile_regular_left(0); spawn_missile_regular_right(0);} break;
			case 34*s: {spawn_missile_regular_left(1);} break;
			case 35*s: {spawn_missile_regular_right(1);} break;
			case 37*s: {spawn_missile_regular_left(1);} break;
			case 37*s+72: {spawn_missile_regular_right(1);} break;
			case 38*s: {spawn_missile_regular_left(1);} break;
			case 38*s+72: {spawn_missile_regular_right(1);} break;
			case 40*s: {spawn_missile_regular_left(1);} break;
			case 40*s+72: {spawn_missile_regular_left(1);} break;
			case 41*s: {spawn_missile_regular_right(1);} break;
			case 41*s+72: {spawn_missile_regular_right(1);} break;
			#endregion
			#region section 3
			case 44*s: {show_notification_game("Collect coins for bonus points");} break;
			case 46*s: {spawn_coin(rw*0.3, rh*0.4);} break;
			case 46*s+36: {spawn_coin(rw*0.3, rh*0.5);} break;
			case 46*s+72: {spawn_coin(rw*0.3, rh*0.6);} break;
			case 47*s: {spawn_coin(rw*0.7, rh*0.4);} break;
			case 47*s+36: {spawn_coin(rw*0.7, rh*0.5);} break;
			case 47*s+72: {spawn_coin(rw*0.7, rh*0.6);} break;
			
			case 50*s: {spawn_coin(rw*0.25, rh*0.3);} break;
			case 50*s+36: {spawn_coin(rw*0.25, rh*0.5);} break;
			case 50*s+72: {spawn_coin(rw*0.25, rh*0.7);} break;
			case 51*s: {spawn_coin(rw*0.75, rh*0.3);} break;
			case 51*s+36: {spawn_coin(rw*0.75, rh*0.5);} break;
			case 51*s+72: {spawn_coin(rw*0.75, rh*0.7);} break;
			#endregion
			#region section 4
			case 53*s: {spawn_missile_small_left(0)} break;
			case 53*s+28: {spawn_missile_small_left(0)} break;
			case 53*s+56: {spawn_missile_small_left(0)} break;
			case 55*s: {spawn_missile_small_right(0)} break;
			case 55*s+28: {spawn_missile_small_right(0)} break;
			case 55*s+56: {spawn_missile_small_right(0)} break;
			
			case 58*s: {spawn_missile_small_left(0)} break;
			case 58*s+28: {spawn_missile_small_left(0)} break;
			case 58*s+56: {spawn_missile_small_left(0)} break;
			case 60*s: {spawn_missile_small_right(0)} break;
			case 60*s+28: {spawn_missile_small_right(0)} break;
			case 60*s+56: {spawn_missile_small_right(0)} break;
			#endregion
			
			#region section 5
			case 63*s: {spawn_missile_small_top(0)} break;
			case 63*s+28: {spawn_missile_small_top(0)} break;
			case 63*s+56: {spawn_missile_small_top(0)} break;
			case 65*s: {spawn_missile_small_bottom(0)} break;
			case 65*s+28: {spawn_missile_small_bottom(0)} break;
			case 65*s+56: {spawn_missile_small_bottom(0)} break;
			case 68*s: {spawn_missile_small_left(1)} break;
			case 68*s+28: {spawn_missile_small_left(1)} break;
			case 68*s+56: {spawn_missile_small_left(1)} break;
			case 70*s: {spawn_missile_small_right(1)} break;
			case 70*s+28: {spawn_missile_small_right(1)} break;
			case 70*s+56: {spawn_missile_small_right(1)} break;
			#endregion
			
			#region section 6
			case 73*s: {spawn_missile(missileType.regular, 0, 0, rh*0.25, right)} break;
			case 74*s: {spawn_missile(missileType.regular, 0, 0, rh*0.35, right)} break;
			case 75*s: {spawn_missile(missileType.regular, 0, 0, rh*0.45, right)
				spawn_missile_regular_right(1)} break;
			case 76*s: {spawn_missile(missileType.regular, 0, 0, rh*0.55, right)} break;
			case 77*s: {spawn_missile(missileType.regular, 0, 0, rh*0.65, right)} break;
			case 78*s: {spawn_missile(missileType.regular, 0, 0, rh*0.75, right)} break;
			
			case 80*s: {spawn_missile(missileType.regular, 0, rw, rh*0.25, left)} break;
			case 81*s: {spawn_missile(missileType.regular, 0, rw, rh*0.35, left)} break;
			case 82*s: {spawn_missile(missileType.regular, 0, rw, rh*0.45, left)
				spawn_missile_regular_left(1)} break;
			case 83*s: {spawn_missile(missileType.regular, 0, rw, rh*0.55, left)} break;
			case 84*s: {spawn_missile(missileType.regular, 0, rw, rh*0.65, left)} break;
			case 85*s: {spawn_missile(missileType.regular, 0, rw, rh*0.75, left)} break;
			#endregion
			
		}
	}
	break;
}
