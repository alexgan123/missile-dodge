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
			case 25*s: {spawn_powerup(powerupType.shield, 0.3, 0.7);} break;
			case 25*s+36: {spawn_powerup(powerupType.life, 0.5, 0.7);} break;
			case 25*s+72: {spawn_powerup(powerupType.regen, 0.7, 0.7);} break;
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
			case 46*s: {spawn_coin(0.3, 0.4);} break;
			case 46*s+36: {spawn_coin(0.3, 0.5);} break;
			case 46*s+72: {spawn_coin(0.3, 0.6);} break;
			case 47*s: {spawn_coin(0.7, 0.4);} break;
			case 47*s+36: {spawn_coin(0.7, 0.5);} break;
			case 47*s+72: {spawn_coin(0.7, 0.6);} break;
			
			case 50*s: {spawn_coin(0.25, 0.3);} break;
			case 51*s: {spawn_coin(0.75, 0.7);} break;
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
			case 63*s: {spawn_missile_small_top(0)
				spawn_powerup(powerupType.shield, 0.3, 0.3)} break;
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
			case 73*s: {spawn_missile_regular_fixed(0, 0, 0.25)
				spawn_coin(0.2, 0.2)} break;
			case 74*s: {spawn_missile_regular_fixed(0, 0, 0.35)} break;
			case 75*s: {spawn_missile_regular_fixed(0, 0, 0.45)
				spawn_missile_regular_right(1)} break;
			case 76*s: {spawn_missile_regular_fixed(0, 0, 0.55)} break;
			case 77*s: {spawn_missile_regular_fixed(0, 0, 0.65)} break;
			case 78*s: {spawn_missile_regular_fixed(0, 0, 0.75)
				spawn_missile_regular_right(1)} break;
			
			case 80*s: {spawn_missile_regular_fixed(0, 1, 0.25)
				spawn_coin(0.8, 0.8)} break;
			case 81*s: {spawn_missile_regular_fixed(0, 1, 0.35)} break;
			case 82*s: {spawn_missile_regular_fixed(0, 1, 0.45)
				spawn_missile_regular_left(1)} break;
			case 83*s: {spawn_missile_regular_fixed(0, 1, 0.55)} break;
			case 84*s: {spawn_missile_regular_fixed(0, 1, 0.65)} break;
			case 85*s: {spawn_missile_regular_fixed(0, 1, 0.75)
				spawn_missile_regular_left(1)} break;
			#endregion
			#region section 7
			case 88*s: {spawn_missile_regular_top(0)
				spawn_powerup(powerupType.regen, 0.7, 0.7)} break;
			case 88*s+72: {spawn_missile_regular_right(0)} break;
			case 89*s: {spawn_missile_regular_bottom(0)} break;
			case 89*s+72: {spawn_missile_regular_left(0)} break;
			
			case 92*s: {spawn_missile_regular_top(0)} break;
			case 92*s+72: {spawn_missile_regular_right(0)} break;
			case 93*s: {spawn_missile_regular_bottom(0)} break;
			case 93*s+72: {spawn_missile_regular_left(0)} break;
			
			case 96*s: {spawn_missile_regular_top(0)} break;
			case 96*s+72: {spawn_missile_regular_right(1)} break;
			case 97*s: {spawn_missile_regular_bottom(0)} break;
			case 97*s+72: {spawn_missile_regular_left(1)} break;
			#endregion
			#region section 8
			case 100*s: {spawn_missile_regular_fixed(0, 0, 0.3, true)
				spawn_coin(0.4, 0.8)} break;
			case 101*s: {spawn_missile_regular_fixed(0, 0, 0.4, true)} break;
			case 102*s: {spawn_missile_regular_fixed(0, 0, 0.5, true)} break;
			
			case 104*s: {spawn_missile_regular_fixed(0, 0, 0.8, true)} break;
			case 105*s: {spawn_missile_regular_fixed(0, 0, 0.7, true)} break;
			case 106*s: {spawn_missile_regular_fixed(0, 0, 0.6, true)} break;
			
			case 109*s: {spawn_missile_regular_fixed(0, 1, 0.4, true)
				spawn_coin(0.6, 0.8)} break;
			case 109*s+72: {spawn_missile_regular_fixed(0, 1, 0.4, true)} break;
			case 110*s: {spawn_missile_regular_fixed(0, 1, 0.4, true)} break;
	
			case 112*s: {spawn_missile_small_left(0)} break;
			case 112*s+28: {spawn_missile_small_left(0)} break;
			case 112*s+56: {spawn_missile_small_left(0)} break;
			case 113*s: {spawn_missile_regular_top(1)} break;
			case 114*s: {spawn_missile_small_right(0)} break;
			case 114*s+28: {spawn_missile_small_right(0)} break;
			case 114*s+56: {spawn_missile_small_right(0)} break;
			
			case 120*s: {obj_game_manager.game_state = gameState.victory;
				update_and_save_highscore(true)} break;
			#endregion
		}
	}
	break;
	case 2: {
		switch (time) {
			#region section 1
			case 1*s: {spawn_missile_regular_fixed(0, 0, 0.3, true)
				spawn_missile_regular_fixed(0, 1, 0.3, true)} break;
			case 2*s: {spawn_missile_regular_fixed(0, 0, 0.4, true)
				spawn_missile_regular_fixed(0, 1, 0.4, true)} break;
			case 3*s: {spawn_missile_regular_fixed(1, 0, 0.5, true)
				spawn_missile_regular_fixed(1, 1, 0.5, true)} break;
				
			case 6*s: {spawn_missile_regular_top(0)
				spawn_missile_regular_bottom(0)} break;
			case 7*s: {spawn_missile_regular_top(0)
				spawn_missile_regular_bottom(0)} break;
			case 8*s: {spawn_missile_regular_top(1)
				spawn_missile_regular_bottom(1)} break;
			#endregion
			
			#region section 2
			case 11*s: {spawn_missile_regular_fixed(0, 0.1, 0)
				spawn_coin(0.3, 0.7)} break;
			case 12*s: {spawn_missile_regular_fixed(0, 0.3, 0)} break;
			case 13*s: {spawn_missile_regular_fixed(0, 0.5, 0)
				spawn_missile_regular_right(0)} break;
			case 14*s: {spawn_missile_regular_fixed(0, 0.7, 0)} break;
			case 15*s: {spawn_missile_regular_fixed(0, 0.9, 0)
				spawn_missile_regular_right(0)} break;
			
			case 16*s: {spawn_missile_regular_fixed(0, 0.8, 0)} break;
			case 17*s: {spawn_missile_regular_fixed(0, 0.6, 0)} break;
			case 18*s: {spawn_missile_regular_fixed(0, 0.4, 0)
				spawn_missile_regular_right(0)} break;
			case 19*s: {spawn_missile_regular_fixed(0, 0.2, 0)} break;
			case 20*s: {spawn_missile_regular_fixed(0, 0.1, 0)
				spawn_missile_regular_right(0)} break;
			
			case 23*s: {spawn_missile_regular_fixed(0, 0.2, 1)
				spawn_coin(0.7, 0.7)} break;
			case 24*s: {spawn_missile_regular_fixed(0, 0.6, 1)} break;
			case 25*s: {spawn_missile_regular_fixed(0, 0.4, 1)
				spawn_missile_regular_left(0)} break;
			case 26*s: {spawn_missile_regular_fixed(0, 0.8, 1)} break;
			case 27*s: {spawn_missile_regular_fixed(0, 0.5, 1)
				spawn_missile_regular_left(0)} break;
				
			case 28*s: {spawn_missile_regular_fixed(0, 0.15, 1)} break;
			case 29*s: {spawn_missile_regular_fixed(0, 0.6, 1)} break;
			case 30*s: {spawn_missile_regular_fixed(0, 0.3, 1)
				spawn_missile_regular_left(1)} break;
			case 31*s: {spawn_missile_regular_fixed(0, 0.75, 1)
				spawn_missile_regular_left(1)} break;
			case 32*s: {spawn_missile_regular_fixed(0, 0.45, 1)
				spawn_missile_regular_left(1) spawn_powerup(powerupType.regen, 0.3, 0.7)} break;
			#endregion
			
			#region section 2
			case 35*s: {show_notification_game("Some missiles have special properties.");} break;
			case 38*s: {show_notification_game("Listen out for them!");} break;
			
			case 42*s: {spawn_missile_speedy_fixed(0, 0, 0.3)} break;
			case 43*s: {spawn_missile_speedy_fixed(0, 0, 0.3)} break;
			case 44*s: {spawn_missile_regular_right(1)} break;
			case 45*s: {spawn_missile_regular_right(1)} break;
			
			case 48*s: {spawn_missile_speedy_fixed(0, 1, 0.7)} break;
			case 49*s: {spawn_missile_speedy_fixed(0, 1, 0.7)} break;
			case 50*s: {spawn_missile_regular_left(1)} break;
			case 51*s: {spawn_missile_regular_left(1)} break;
			
			case 53*s: {spawn_missile_small_left(1)
				spawn_coin(0.25, 0.75)} break;
			case 53*s+28: {spawn_missile_small_left(1)} break;
			case 53*s+56: {spawn_missile_small_left(1)} break;
			case 54*s: {spawn_missile_small_right(1)} break;
			case 54*s+28: {spawn_missile_small_right(1)} break;
			case 54*s+56: {spawn_missile_small_right(1)} break;
			case 55*s: {spawn_missile_regular_top(0)} break;
			case 56*s: {spawn_missile_regular_bottom(0)} break;
			case 57*s: {spawn_missile_regular_top(0)} break;
			
			case 60*s: {spawn_missile_small_left(1)
				spawn_coin(0.75, 0.75)} break;
			case 60*s+28: {spawn_missile_small_left(1)} break;
			case 60*s+56: {spawn_missile_small_left(1)} break;
			case 61*s: {spawn_missile_small_right(1)} break;
			case 61*s+28: {spawn_missile_small_right(1)} break;
			case 61*s+56: {spawn_missile_small_right(1)} break;
			case 62*s: {spawn_missile_regular_top(0)} break;
			case 63*s: {spawn_missile_regular_bottom(0)} break;
			case 64*s: {spawn_missile_regular_top(0)} break;
			
			case 66*s: {spawn_missile_speedy_fixed(1, 0, 0.5)
				spawn_coin(0.75, 0.25)} break;
			case 67*s: {spawn_missile_regular_left(0)} break;
			case 68*s: {spawn_missile_regular_left(0)} break;
			
			case 69*s: {spawn_missile_speedy_fixed(1, 1, 0.5)} break;
			case 70*s: {spawn_missile_regular_right(0)} break;
			case 71*s: {spawn_missile_regular_right(0)} break;
			#endregion
			
			#region section 3
			case 74*s: {spawn_missile_regular_fixed(0, 0.3, 0)
				spawn_missile_regular_fixed(0, 0, 0.3) spawn_powerup(powerupType.shield, 0.7, 0.3)} break;
			case 75*s: {spawn_missile_regular_fixed(0, 1, 0.7)
				spawn_missile_regular_fixed(0, 0.7, 1)} break;
			case 76*s: {spawn_missile_regular_left(1)
				spawn_coin(0.25, 0.25)} break;
			case 77*s: {spawn_missile_regular_right(1)} break;
			case 78*s: {spawn_missile_regular_left(1)} break;
			case 79*s: {spawn_missile_regular_right(1)} break;
			case 80*s: {spawn_missile_speedy_fixed(0, 0, 0.4)} break;
			case 81*s: {spawn_missile_speedy_fixed(0, 1, 0.4)} break;
			
			case 83*s: {spawn_missile_regular_fixed(0, 1, 0.7)
				spawn_missile_regular_fixed(0, 0.7, 1)} break;
			case 84*s: {spawn_missile_regular_fixed(0, 0.3, 0)
				spawn_missile_regular_fixed(0, 0, 0.3)} break;
			case 85*s: {spawn_missile_regular_left(1)
				spawn_coin(0.75, 0.75)} break;
			case 86*s: {spawn_missile_regular_right(1)} break;
			case 87*s: {spawn_missile_regular_left(1)} break;
			case 88*s: {spawn_missile_regular_right(1)} break;
			case 89*s: {spawn_missile_speedy_fixed(0, 0, 0.4)} break;
			case 90*s: {spawn_missile_speedy_fixed(0, 1, 0.4)} break;
			#endregion
			
			#region section 4
			case 93*s: {spawn_missile_small_left(1)} break;
			case 93*s+28: {spawn_missile_small_left(1)} break;
			case 93*s+56: {spawn_missile_small_left(1)} break;
			case 94*s: {spawn_missile_small_right(1)
				spawn_powerup(powerupType.life, 0.7, 0.7) spawn_coin(0.25, 0.5)} break;
			case 94*s+28: {spawn_missile_small_right(1)} break;
			case 94*s+56: {spawn_missile_small_right(1)} break;
			
			case 95*s: {spawn_missile_small_top(1)} break;
			case 95*s+28: {spawn_missile_small_top(1)} break;
			case 95*s+56: {spawn_missile_small_top(1)} break;
			case 96*s: {spawn_missile_small_bottom(1)} break;
			case 96*s+28: {spawn_missile_small_bottom(1)} break;
			case 96*s+56: {spawn_missile_small_bottom(1)} break;
			
			case 97*s: {spawn_missile_regular_fixed(0, 0, 0.35, true)} break;
			case 98*s: {spawn_missile_regular_fixed(0, 0, 0.65, true)} break;
			case 99*s: {spawn_missile_speedy_right(1)} break;
			case 100*s: {spawn_missile_speedy_right(1)} break;
			
			case 103*s: {spawn_missile_small_left(1)} break;
			case 103*s+28: {spawn_missile_small_left(1)} break;
			case 103*s+56: {spawn_missile_small_left(1)} break;
			case 104*s: {spawn_missile_small_right(1)
				spawn_coin(0.3, 0.6)} break;
			case 104*s+28: {spawn_missile_small_right(1)} break;
			case 104*s+56: {spawn_missile_small_right(1)} break;
			
			case 105*s: {spawn_missile_small_top(1)} break;
			case 105*s+28: {spawn_missile_small_top(1)} break;
			case 105*s+56: {spawn_missile_small_top(1)} break;
			case 106*s: {spawn_missile_small_bottom(1)} break;
			case 106*s+28: {spawn_missile_small_bottom(1)} break;
			case 106*s+56: {spawn_missile_small_bottom(1)} break;
			
			case 107*s: {spawn_missile_regular_fixed(0, 0, 0.35, true)
				spawn_coin(0.8, 0.75)} break;
			case 108*s: {spawn_missile_regular_fixed(0, 0, 0.65, true)} break;
			case 109*s: {spawn_missile_speedy_right(1)} break;
			case 110*s: {spawn_missile_speedy_right(1)} break;
			
			case 111*s: {spawn_missile_regular_left(0)} break;
			case 112*s: {spawn_missile_regular_left(1)} break;
			case 113*s: {spawn_missile_regular_right(2)} break;
			case 114*s: {spawn_missile_regular_right(2)} break;
			case 115*s: {spawn_missile_regular_right(2)} break;
			case 120*s: {obj_game_manager.game_state = gameState.victory;
				update_and_save_highscore(true)} break;
			#endregion
		}
	}
	break;
	
	case 3: {
		
	}
	break;
}
