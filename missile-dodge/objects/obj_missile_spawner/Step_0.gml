time += global.delta;

// design the level here
switch(obj_game_manager.level) {
	case 1: {
		if t(1) {show_notification_game("Use Arrow Keys/WASD to avoid missiles")}
		if t(3) {spawn_missile_regular_left(0)}
		if t(4) {spawn_missile_regular_left(0)}
		if t(5) {spawn_missile_regular_left(0)}
		if t(6) {spawn_missile_regular_top(0)}
		if t(7) {spawn_missile_regular_top(0)}
		if t(8) {spawn_missile_regular_top(0)}
		if t(9) {spawn_missile_regular_right(0)}
		if t(10) {spawn_missile_regular_right(0)}
		if t(11) {spawn_missile_regular_right(0)}
		if t(12) {spawn_missile_regular_bottom(0)}
		if t(13) {spawn_missile_regular_bottom(0)}
		if t(14) {spawn_missile_regular_bottom(0)}
		if t(16) {spawn_missile_regular_left(0)}
		if t(17) {spawn_missile_regular_left(1)}
		if t(18) {spawn_missile_regular_left(2)}
		if t(19) {spawn_missile_regular_right(0)}
		if t(20) {spawn_missile_regular_right(1)}
		if t(21) {spawn_missile_regular_right(2)}
		
		if t(23) {show_notification_game("Collect powerups to help you survive longer")}
		if t(25) {spawn_powerup(powerupType.shield, 0.3, 0.7)}
		if t(25.25) {spawn_powerup(powerupType.life, 0.5, 0.7)}
		if t(25.5) {spawn_powerup(powerupType.regen, 0.7, 0.7)}
		
		if t(27) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		
		if t(28) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		if t(29) {spawn_missile_regular_left(1)}
		if t(30) {spawn_missile_regular_right(1)}
		if t(32) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		if t(33) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		if t(34) {spawn_missile_regular_left(1)}
		if t(35) {spawn_missile_regular_right(1)}
		if t(37) {spawn_missile_regular_left(1)}
		if t(37.5) {spawn_missile_regular_right(1)} 
		if t(38) {spawn_missile_regular_left(1)} 
		if t(38.5) {spawn_missile_regular_right(1)} 
		if t(40) {spawn_missile_regular_left(1)} 
		if t(40.5) {spawn_missile_regular_left(1)}
		if t(41) {spawn_missile_regular_right(1)} 
		if t(41.5) {spawn_missile_regular_right(1)} 

		if t(44) {show_notification_game("Collect coins for bonus points")} 
		if t(46) {spawn_coin(0.3, 0.4)} 
		if t(46.25) {spawn_coin(0.3, 0.5)} 
		if t(46.5) {spawn_coin(0.3, 0.6)} 
		if t(47) {spawn_coin(0.7, 0.4)} 
		if t(47.25) {spawn_coin(0.7, 0.5)} 
		if t(47.5) {spawn_coin(0.7, 0.6)} 
			
		if t(50) {spawn_coin(0.25, 0.3)} 
		if t(51) {spawn_coin(0.75, 0.7)} 

		if t(53) {spawn_missile_small_left(0)} 
		if t(53.2) {spawn_missile_small_left(0)} 
		if t(53.4) {spawn_missile_small_left(0)} 
		if t(55) {spawn_missile_small_right(0)} 
		if t(55.2) {spawn_missile_small_right(0)} 
		if t(55.4) {spawn_missile_small_right(0)} 
			
		if t(58) {spawn_missile_small_left(0)} 
		if t(58.2) {spawn_missile_small_left(0)} 
		if t(58.4) {spawn_missile_small_left(0)} 
		if t(60) {spawn_missile_small_right(0)} 
		if t(60.2) {spawn_missile_small_right(0)} 
		if t(60.4) {spawn_missile_small_right(0)} 
		if t(63) {spawn_missile_small_top(0)
			spawn_powerup(powerupType.shield, 0.3, 0.3)} 
		if t(63.2) {spawn_missile_small_top(0)} 
		if t(63.4) {spawn_missile_small_top(0)} 
		if t(65) {spawn_missile_small_bottom(0)} 
		if t(65.2) {spawn_missile_small_bottom(0)} 
		if t(65.4) {spawn_missile_small_bottom(0)} 
		if t(68) {spawn_missile_small_left(1)} 
		if t(68.2) {spawn_missile_small_left(1)} 
		if t(68.4) {spawn_missile_small_left(1)} 
		if t(70) {spawn_missile_small_right(1)} 
		if t(70.2) {spawn_missile_small_right(1)} 
		if t(70.4) {spawn_missile_small_right(1)} 
		if t(73) {spawn_missile_regular_fixed(0, 0, 0.25)
			spawn_coin(0.2, 0.2)} 
		if t(74) {spawn_missile_regular_fixed(0, 0, 0.35)} 
		if t(75) {spawn_missile_regular_fixed(0, 0, 0.45)
			spawn_missile_regular_right(1)} 
		if t(76) {spawn_missile_regular_fixed(0, 0, 0.55)} 
		if t(77) {spawn_missile_regular_fixed(0, 0, 0.65)} 
		if t(78) {spawn_missile_regular_fixed(0, 0, 0.75)
			spawn_missile_regular_right(1)} 
			
		if t(80) {spawn_missile_regular_fixed(0, 1, 0.25)
			spawn_coin(0.8, 0.8)} 
		if t(81) {spawn_missile_regular_fixed(0, 1, 0.35)} 
		if t(82) {spawn_missile_regular_fixed(0, 1, 0.45)
			spawn_missile_regular_left(1)} 
		if t(83) {spawn_missile_regular_fixed(0, 1, 0.55)} 
		if t(84) {spawn_missile_regular_fixed(0, 1, 0.65)} 
		if t(85) {spawn_missile_regular_fixed(0, 1, 0.75)
			spawn_missile_regular_left(1)} 

		if t(88) {spawn_missile_regular_top(0)
			spawn_powerup(powerupType.regen, 0.7, 0.7)} 
		if t(88.5) {spawn_missile_regular_right(0)} 
		if t(89) {spawn_missile_regular_bottom(0)} 
		if t(89.5) {spawn_missile_regular_left(0)} 
			
		if t(92) {spawn_missile_regular_top(0)} 
		if t(92.5) {spawn_missile_regular_right(0)} 
		if t(93) {spawn_missile_regular_bottom(0)} 
		if t(93.5) {spawn_missile_regular_left(0)} 
			
		if t(96) {spawn_missile_regular_top(0)} 
		if t(96.5) {spawn_missile_regular_right(1)} 
		if t(97) {spawn_missile_regular_bottom(0)} 
		if t(97.5) {spawn_missile_regular_left(1)} 
		
		if t(100) {spawn_missile_regular_fixed(0, 0, 0.3, true) spawn_powerup(powerupType.shield, 0.7, 0.7)
			spawn_coin(0.4, 0.8)} 
		if t(101) {spawn_missile_regular_fixed(0, 0, 0.4, true)} 
		if t(102) {spawn_missile_regular_fixed(0, 0, 0.5, true)} 
			
		if t(104) {spawn_missile_regular_fixed(0, 0, 0.8, true)} 
		if t(105) {spawn_missile_regular_fixed(0, 0, 0.7, true)} 
		if t(106) {spawn_missile_regular_fixed(0, 0, 0.6, true)} 
			
		if t(109) {spawn_missile_regular_fixed(0, 1, 0.4, true)
			spawn_coin(0.6, 0.8)} 
		if t(109.5) {spawn_missile_regular_fixed(0, 1, 0.4, true)} 
		if t(110) {spawn_missile_regular_fixed(0, 1, 0.4, true)} 
	
		if t(112) {spawn_missile_small_left(0)} 
		if t(112.2) {spawn_missile_small_left(0)} 
		if t(112.4) {spawn_missile_small_left(0)} 
		if t(113) {spawn_missile_regular_top(1)} 
		if t(114) {spawn_missile_small_right(0)} 
		if t(114.2) {spawn_missile_small_right(0)} 
		if t(114.4) {spawn_missile_small_right(0)} 
			
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)} 
	}
	break;
	case 2: {
		if t(1) {spawn_missile_regular_fixed(0, 0, 0.3, true)
			spawn_missile_regular_fixed(0, 1, 0.3, true)} 
		if t(2) {spawn_missile_regular_fixed(0, 0, 0.4, true)
			spawn_missile_regular_fixed(0, 1, 0.4, true)} 
		if t(3) {spawn_missile_regular_fixed(1, 0, 0.5, true)
			spawn_missile_regular_fixed(1, 1, 0.5, true)} 
				
		if t(6) {spawn_missile_regular_top(0)
			spawn_missile_regular_bottom(0)} 
		if t(7) {spawn_missile_regular_top(0)
			spawn_missile_regular_bottom(0)} 
		if t(8) {spawn_missile_regular_top(1)
			spawn_missile_regular_bottom(1)} 
			
		if t(11) {spawn_missile_regular_fixed(0, 0.1, 0)
			spawn_coin(0.3, 0.7)} 
		if t(12) {spawn_missile_regular_fixed(0, 0.3, 0)} 
		if t(13) {spawn_missile_regular_fixed(0, 0.5, 0)
			spawn_missile_regular_right(0)} 
		if t(14) {spawn_missile_regular_fixed(0, 0.7, 0)} 
		if t(15) {spawn_missile_regular_fixed(0, 0.9, 0)
			spawn_missile_regular_right(0)} 
			
		if t(16) {spawn_missile_regular_fixed(0, 0.8, 0)} 
		if t(17) {spawn_missile_regular_fixed(0, 0.6, 0)} 
		if t(18) {spawn_missile_regular_fixed(0, 0.4, 0)
			spawn_missile_regular_right(0)} 
		if t(19) {spawn_missile_regular_fixed(0, 0.2, 0)} 
		if t(20) {spawn_missile_regular_fixed(0, 0.1, 0)
			spawn_missile_regular_right(0)} 
			
		if t(23) {spawn_missile_regular_fixed(0, 0.2, 1)
			spawn_coin(0.7, 0.7)} 
		if t(24) {spawn_missile_regular_fixed(0, 0.6, 1)} 
		if t(25) {spawn_missile_regular_fixed(0, 0.4, 1)
			spawn_missile_regular_left(0)} 
		if t(26) {spawn_missile_regular_fixed(0, 0.8, 1)} 
		if t(27) {spawn_missile_regular_fixed(0, 0.5, 1)
			spawn_missile_regular_left(0)} 
				
		if t(28) {spawn_missile_regular_fixed(0, 0.15, 1)} 
		if t(29) {spawn_missile_regular_fixed(0, 0.6, 1)} 
		if t(30) {spawn_missile_regular_fixed(0, 0.3, 1)
			spawn_missile_regular_left(1)} 
		if t(31) {spawn_missile_regular_fixed(0, 0.75, 1)
			spawn_missile_regular_left(1)} 
		if t(32) {spawn_missile_regular_fixed(0, 0.45, 1)
			spawn_missile_regular_left(1) spawn_powerup(powerupType.shield, 0.3, 0.7)} 


		if t(35) {show_notification_game("Some missiles have special properties.");} 
		if t(38) {show_notification_game("They are harder to dodge, so watch out!");} 
			
		if t(42) {spawn_missile_speedy_fixed(0, 0, 0.3)} 
		if t(43) {spawn_missile_speedy_fixed(0, 0, 0.3)} 
		if t(44) {spawn_missile_regular_right(1)} 
		
		if t(45) {spawn_missile_regular_right(1)} 
			
		if t(48) {spawn_missile_speedy_fixed(0, 1, 0.7)} 
		if t(49) {spawn_missile_speedy_fixed(0, 1, 0.7)} 
		if t(50) {spawn_missile_regular_left(1)} 
		if t(51) {spawn_missile_regular_left(1) spawn_powerup(powerupType.regen, 0.3, 0.3)} 
			
		if t(53) {spawn_missile_small_left(1)
			spawn_coin(0.25, 0.75)} 
		if t(53.2) {spawn_missile_small_left(1)} 
		if t(53.4) {spawn_missile_small_left(1)} 
		if t(54) {spawn_missile_small_right(1)} 
		if t(54.2) {spawn_missile_small_right(1)} 
		if t(54.4) {spawn_missile_small_right(1)} 
		if t(55) {spawn_missile_regular_top(0)} 
		if t(56) {spawn_missile_regular_bottom(0)} 
		if t(57) {spawn_missile_regular_top(0)} 
			
		if t(60) {spawn_missile_small_left(1)
			spawn_coin(0.75, 0.75)} 
		if t(60.2) {spawn_missile_small_left(1)} 
		if t(60.4) {spawn_missile_small_left(1)} 
		if t(61) {spawn_missile_small_right(1)} 
		if t(61.2) {spawn_missile_small_right(1)} 
		if t(61.4) {spawn_missile_small_right(1)} 
		if t(62) {spawn_missile_regular_top(0)} 
		if t(63) {spawn_missile_regular_bottom(0)} 
		if t(64) {spawn_missile_regular_top(0)} 
			
		if t(66) {spawn_missile_speedy_fixed(1, 0, 0.5)
			spawn_coin(0.75, 0.25)} 
		if t(67) {spawn_missile_regular_left(0)} 
		if t(68) {spawn_missile_regular_left(0)} 
			
		if t(69) {spawn_missile_speedy_fixed(1, 1, 0.5)} 
		if t(70) {spawn_missile_regular_right(0)} 
		if t(71) {spawn_missile_regular_right(0)} 
		
		if t(74) {spawn_missile_regular_fixed(0, 0.3, 0)
			spawn_missile_regular_fixed(0, 0, 0.3) spawn_powerup(powerupType.life, 0.7, 0.3)} 
		if t(75) {spawn_missile_regular_fixed(0, 1, 0.7)
			spawn_missile_regular_fixed(0, 0.7, 1)} 
		if t(76) {spawn_missile_regular_left(1)
			spawn_coin(0.25, 0.25)} 
		if t(77) {spawn_missile_regular_right(1) spawn_powerup(powerupType.shield, 0.7, 0.7)} 
		if t(78) {spawn_missile_regular_left(1)} 
		if t(79) {spawn_missile_regular_right(1)} 
		if t(80) {spawn_missile_speedy_fixed(0, 0, 0.4)} 
		if t(81) {spawn_missile_speedy_fixed(0, 1, 0.4)} 
			
		if t(83) {spawn_missile_regular_fixed(0, 1, 0.7)
			spawn_missile_regular_fixed(0, 0.7, 1)} 
		if t(84) {spawn_missile_regular_fixed(0, 0.3, 0)
			spawn_missile_regular_fixed(0, 0, 0.3)} 
		if t(85) {spawn_missile_regular_left(1)
			spawn_coin(0.75, 0.75)} 
		if t(86) {spawn_missile_regular_right(1)} 
		if t(87) {spawn_missile_regular_left(1)} 
		if t(88) {spawn_missile_regular_right(1)} 
		if t(89) {spawn_missile_speedy_fixed(0, 0, 0.4)} 
		if t(90) {spawn_missile_speedy_fixed(0, 1, 0.4)} 

		if t(93) {spawn_missile_small_left(1)} 
		if t(93.2) {spawn_missile_small_left(1)} 
		if t(93.4) {spawn_missile_small_left(1)} 
		if t(94) {spawn_missile_small_right(1)
			spawn_powerup(powerupType.regen, 0.7, 0.7) spawn_coin(0.25, 0.5)} 
		if t(94.2) {spawn_missile_small_right(1)} 
		if t(94.4) {spawn_missile_small_right(1)} 
			
		if t(95) {spawn_missile_small_top(1)} 
		if t(95.2) {spawn_missile_small_top(1)} 
		if t(95.4) {spawn_missile_small_top(1)} 
		if t(96) {spawn_missile_small_bottom(1)} 
		if t(96.2) {spawn_missile_small_bottom(1)} 
		if t(96.4) {spawn_missile_small_bottom(1)} 
			
		if t(97) {spawn_missile_regular_fixed(0, 0, 0.35, true)} 
		if t(98) {spawn_missile_regular_fixed(0, 0, 0.65, true)} 
		if t(99) {spawn_missile_speedy_right(1)} 
		if t(100) {spawn_missile_speedy_right(1)} 
			
		if t(103) {spawn_missile_small_left(1) spawn_powerup(powerupType.shield, 0.75, 0.75)} 
		if t(103.2) {spawn_missile_small_left(1)} 
		if t(103.4) {spawn_missile_small_left(1)} 
		if t(104) {spawn_missile_small_right(1)
			spawn_coin(0.3, 0.6)} 
		if t(104.2) {spawn_missile_small_right(1)} 
		if t(104.4) {spawn_missile_small_right(1)} 
			
		if t(105) {spawn_missile_small_top(1)} 
		if t(105.2) {spawn_missile_small_top(1)} 
		if t(105.4) {spawn_missile_small_top(1)} 
		if t(106) {spawn_missile_small_bottom(1)} 
		if t(106.2) {spawn_missile_small_bottom(1)} 
		if t(106.4) {spawn_missile_small_bottom(1)} 
			
		if t(107) {spawn_missile_regular_fixed(0, 0, 0.35, true)
			spawn_coin(0.8, 0.75)} 
		if t(108) {spawn_missile_regular_fixed(0, 0, 0.65, true)} 
		if t(109) {spawn_missile_speedy_right(1)} 
		if t(110) {spawn_missile_speedy_right(1)} 
			
		if t(111) {spawn_missile_regular_left(0)} 
		if t(112) {spawn_missile_regular_left(1)} 
		if t(113) {spawn_missile_regular_right(2)} 
		if t(114) {spawn_missile_regular_right(2)} 
		if t(115) {spawn_missile_regular_right(2)} 
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)} 
	}
	break;
	case 3: {
		if t(1) {spawn_missile_regular_top(0)
			spawn_missile_regular_bottom(0)}
		if t(2) {spawn_missile_regular_left(1)
			spawn_missile_regular_right(1)}
		if t(3) {spawn_missile_regular_top(0)
			spawn_missile_regular_bottom(0)} 
		if t(4) {spawn_missile_regular_left(4)
			spawn_missile_regular_right(4)}
			
		if t(6) {spawn_missile_regular_top(0)
			spawn_missile_regular_bottom(0)}
		if t(7) {spawn_missile_regular_top(1)
			spawn_missile_regular_bottom(1)}
		if t(8) {spawn_missile_regular_left(0)
			spawn_missile_regular_right(0)} 
		if t(9) {spawn_missile_regular_left(4)
			spawn_missile_regular_right(4)}
			
		if t(12) {spawn_missile_regular_fixed(0, 0, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 15)}
		if t(13) {spawn_missile_regular_fixed(0, 0, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 15)
			spawn_missile_regular_right(1)}
		if t(14) {spawn_missile_regular_fixed(0, 0, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 15)}
		if t(15) {spawn_missile_regular_fixed(0, 0, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 0, 0.5, true, 15)
			spawn_missile_regular_right(1)}
			
		if t(18) {spawn_missile_regular_fixed(0, 1, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 15)}
		if t(19) {spawn_missile_regular_fixed(0, 1, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 15)
			spawn_missile_regular_left(1)}
		if t(20) {spawn_missile_regular_fixed(0, 1, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 15)}
		if t(21) {spawn_missile_regular_fixed(0, 1, 0.5, true, -15)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 0)
			spawn_missile_regular_fixed(0, 1, 0.5, true, 15)
			spawn_missile_regular_left(1)}
			
		if t(24) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_powerup(powerupType.shield, 0.5, 0.25)}
		if t(25) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_coin(0.25, 0.25)}
		if t(26) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_coin(0.25, 0.75)}
		if t(27) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_coin(0.75, 0.75)}
		if t(28) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1) spawn_coin(0.75, 0.25)}
		if t(29) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		if t(30) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		if t(31) {spawn_missile_regular_left(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		
		if t(32) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0)}
		if t(33) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0)}
		if t(34) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0)}
		if t(35) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0)}
		if t(36) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		if t(37) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		if t(38) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
		if t(39) {spawn_missile_regular_right(0)
			spawn_missile_small_fixed(1, random_range(0.25, 0.75), 1)}
			
		if t(42) {spawn_missile_small_left(0)} if t(42.2) {spawn_missile_small_left(0)} if t(42.4) {spawn_missile_small_left(0)}
		if t(43) {spawn_missile_small_right(0)} if t(43.2) {spawn_missile_small_right(0)} if t(43.4) {spawn_missile_small_right(0)}
		if t(44) {spawn_missile_small_fixed(0, 0.2, 0) spawn_missile_small_fixed(0, 0.8, 1)} 
		if t(45) {spawn_missile_small_fixed(0, 0.35, 1) spawn_missile_small_fixed(0, 0.65, 0)}
		if t(46) {spawn_missile_small_fixed(0, 0.5, 0) spawn_missile_small_fixed(0, 0.5, 1)} 
		if t(47) {spawn_missile_small_fixed(0, 0.65, 1) spawn_missile_small_fixed(0, 0.35, 0)} 
		
		if t(49) {spawn_missile_small_left(0)} if t(49.2) {spawn_missile_small_left(0)} if t(49.4) {spawn_missile_small_left(0)}
		if t(50) {spawn_missile_small_right(0)} if t(50.2) {spawn_missile_small_right(0)} if t(50.4) {spawn_missile_small_right(0)}
		if t(51) {spawn_missile_small_fixed(0, 0.2, 0) spawn_missile_small_fixed(0, 0.8, 1)} 
		if t(52) {spawn_missile_small_fixed(0, 0.35, 1) spawn_missile_small_fixed(0, 0.65, 0)}
		if t(53) {spawn_missile_small_fixed(0, 0.5, 0) spawn_missile_small_fixed(0, 0.5, 1)} 
		if t(54) {spawn_missile_small_fixed(0, 0.65, 1) spawn_missile_small_fixed(0, 0.35, 0)} 
		
		if t(56) {spawn_missile_regular_top(1) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 1)}
		if t(57) {spawn_missile_regular_top(1) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 1)}
		if t(58) {spawn_missile_regular_top(1) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 1)}
		if t(59) {spawn_missile_regular_top(1) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 1) spawn_powerup(powerupType.regen, 0.25, 0.35)}
		
		if t(61) {spawn_missile_speedy_left(0)}
		if t(62) {spawn_missile_speedy_right(0)}
		if t(63) {spawn_missile_speedy_left(1)}
		if t(64) {spawn_missile_speedy_right(1)}
		
		if t(65) {spawn_missile_regular_fixed(0, 0.3, 0) spawn_missile_regular_fixed(0, 0, 0.3) spawn_powerup(powerupType.life, 0.75, 0.75)}
		if t(66) {spawn_missile_regular_fixed(0, 0.7, 1) spawn_missile_regular_fixed(0, 1, 0.7)}
		if t(67) {spawn_missile_regular_left(1)}
		if t(68) {spawn_missile_regular_right(1)}
		if t(69) {spawn_missile_speedy_fixed(0, 0, 0.2)}
		if t(70) {spawn_missile_speedy_fixed(0, 1, 0.2)}
		if t(71) {spawn_missile_small_left(0)} if t(71.2) {spawn_missile_small_left(0)} if t(71.4) {spawn_missile_small_left(0)}
		if t(72) {spawn_missile_small_right(0)} if t(72.2) {spawn_missile_small_right(0)} if t(72.4) {spawn_missile_small_right(0)}
		
		if t(75) {spawn_missile_regular_left(0) spawn_missile_regular_bottom(0) spawn_coin(0.75, 0.5)}
		if t(76) {spawn_missile_regular_right(0) spawn_missile_regular_top(0)}
		if t(77) {spawn_missile_regular_left(0) spawn_missile_regular_bottom(0) spawn_coin(0.5, 0.8)}
		if t(78) {spawn_missile_regular_right(0) spawn_missile_regular_top(0)}
		if t(79) {spawn_missile_small_left(0) spawn_missile_small_right(0) spawn_coin(0.25, 0.5)}
		if t(80) {spawn_missile_small_top(0) spawn_missile_small_bottom(0)}
		if t(81) {spawn_powerup(powerupType.shield, 0.25, 0.2)}
		if t(82) {spawn_missile_regular_fixed(0, 0, 0.2) spawn_missile_regular_fixed(0, 1, 0.8)}
		if t(82.5) {spawn_missile_regular_fixed(0, 0, 0.25) spawn_missile_regular_fixed(0, 1, 0.75)}
		if t(83) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_missile_regular_fixed(0, 1, 0.7)}
		
		if t(84) {spawn_missile_regular_left(1) spawn_missile_regular_top(0)}
		if t(84.5) {spawn_missile_regular_right(1)}
		if t(85) {spawn_missile_regular_left(1)}
		
		if t(86) {spawn_missile_regular_right(1) spawn_missile_regular_bottom(0)}
		if t(86.5) {spawn_missile_regular_left(1)}
		if t(87) {spawn_missile_regular_right(1)}
		
		if t(88) {spawn_missile_regular_right(0) spawn_powerup(powerupType.regen, 0.25, 0.75)}
		if t(88.5) {spawn_missile_regular_right(0)}
		if t(89) {spawn_missile_regular_right(0)}
		
		if t(90) {spawn_missile_small_left(0)} if t(90.2) {spawn_missile_small_left(0)} if t(90.4) {spawn_missile_small_left(0)}
		if t(91) {spawn_missile_small_left(0)} if t(91.2) {spawn_missile_small_left(0)} if t(91.4) {spawn_missile_small_left(0)}
		
		if t(92) {spawn_missile_regular_fixed(0, 0, 0.2) spawn_missile_regular_fixed(0, 1, 0.8)}
		if t(92.5) {spawn_missile_regular_fixed(0, 0, 0.25) spawn_missile_regular_fixed(0, 1, 0.75)}
		if t(93) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_missile_regular_fixed(0, 1, 0.7)}
		
		if t(94) {spawn_missile_regular_left(1) spawn_missile_regular_top(0)}
		if t(94.5) {spawn_missile_regular_right(1)}
		if t(95) {spawn_missile_regular_left(1)}
		
		if t(96) {spawn_missile_regular_right(1) spawn_missile_regular_bottom(0) spawn_powerup(powerupType.shield, 0.5, 0.2)}
		if t(96.5) {spawn_missile_regular_left(1)}
		if t(97) {spawn_missile_regular_right(1)}
		
		if t(98) {spawn_missile_regular_right(0) spawn_coin(0.25, 0.75)}
		if t(98.5) {spawn_missile_regular_right(0)}
		if t(99) {spawn_missile_regular_right(0)}
		
		if t(100) {spawn_missile_small_right(0)} if t(100.2) {spawn_missile_small_right(0)} if t(100.4) {spawn_missile_small_right(0)}
		if t(101) {spawn_missile_small_right(0)} if t(101.2) {spawn_missile_small_right(0)} if t(101.4) {spawn_missile_small_right(0)}
		
		if t(104) {spawn_missile_small_fixed(0, 1, 0.3, true) spawn_coin(0.75, 0.75)}
		if t(105) {spawn_missile_small_fixed(0, 1, 0.3, true) spawn_missile_regular_top(1)}
		if t(106) {spawn_missile_small_fixed(0, 1, 0.3, true)}
		if t(107) {spawn_missile_small_fixed(0, 1, 0.3, true) spawn_missile_regular_bottom(1)}
		
		if t(108) {spawn_missile_speedy_left(0)}
		if t(109) {spawn_missile_small_fixed(0, 1, 0.3, true) spawn_missile_regular_top(1)}
		if t(110) {spawn_missile_speedy_right(0)}
		if t(111) {spawn_missile_small_fixed(0, 1, 0.3, true) spawn_missile_regular_bottom(1)}
		
		if t(112) {spawn_missile_small_fixed(0, 0, 0.3, true)}
		if t(113) {spawn_missile_small_fixed(0, 0, 0.3, true) spawn_missile_regular_top(1)}
		if t(114) {spawn_missile_small_left(1)}
		if t(115) {spawn_missile_small_right(1)}
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
		
		
	}
	break;
	case 4: {
		if t(1) {spawn_missile_small_top(0)} if t(1.2) {spawn_missile_small_top(0)} if t(1.4) {spawn_missile_small_top(0)}
		if t(2) {spawn_missile_small_top(0)} if t(2.2) {spawn_missile_small_top(0)} if t(2.4) {spawn_missile_small_top(0)}
		if t(3) {spawn_missile_small_bottom(0)} if t(3.2) {spawn_missile_small_bottom(0)} if t(3.4) {spawn_missile_small_bottom(0)}
		if t(4) {spawn_missile_small_bottom(0)} if t(4.2) {spawn_missile_small_bottom(0)} if t(4.4) {spawn_missile_small_bottom(0)}
		
		if t(5) {spawn_missile_regular_left(1)}
		if t(6) {spawn_missile_regular_right(1)}
		if t(7) {spawn_missile_regular_left(1)}
		if t(8) {spawn_missile_regular_right(1)}
		
		if t(9) {spawn_missile_regular_top(1) spawn_missile_speedy_fixed(0, 0, 0.3)}
		if t(10) {spawn_missile_regular_top(1)}
		if t(11) {spawn_missile_regular_bottom(1) spawn_missile_speedy_fixed(0, 0, 0.7)}
		if t(12) {spawn_missile_regular_bottom(1)}
		
		if t(14) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(14.5) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(15) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		
		if t(16) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(16.5) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(17) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		
		if t(18) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2)) spawn_coin(0.25, 0.25)}
		if t(18.5) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		if t(19) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		
		if t(20) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2)) spawn_coin(0.75, 0.75)}
		if t(20.5) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		if t(21) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		
		if t(22) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2)) spawn_missile_regular_top(1)}
		if t(22.5) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(23) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		
		if t(24) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2)) spawn_missile_regular_bottom(1)}
		if t(24.5) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		if t(25) {spawn_missile_small_fixed(0, 1, 0.4, true, random_range(-2, 2))}
		
		if t(26) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2)) spawn_missile_regular_top(1)}
		if t(26.5) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		if t(27) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		
		if t(28) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2)) spawn_missile_regular_bottom(1)}
		if t(28.5) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		if t(29) {spawn_missile_small_fixed(0, 0, 0.4, true, random_range(-2, 2))}
		
		if t(32) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_powerup(powerupType.shield, 0.2, 0.2)}
		if t(33) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
		if t(34) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
		if t(35) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
			
		if t(36) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_right(1)}
		if t(37) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
		if t(38) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_right(1)}
		if t(39) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
			
			
		if t(41) {spawn_missile_regular_fixed(0, 1, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 1, random_range(0.05, 0.95))}
		if t(42) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
		if t(43) {spawn_missile_regular_fixed(0, 1, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 1, random_range(0.05, 0.95))}
		if t(44) {spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))
			spawn_missile_regular_fixed(0, 0, random_range(0.05, 0.95))}
			
		if t(45) {spawn_missile_regular_top(0) spawn_coin(0.25, 0.75)}
		if t(46) {spawn_missile_regular_bottom(1)}
		if t(47) {spawn_missile_regular_top(0)}
		if t(48) {spawn_missile_regular_bottom(1)}
		
		if t(49) {spawn_missile_speedy_left(1) spawn_coin(0.5, 0.8)}
		if t(50) {spawn_missile_speedy_right(1)}
		if t(51) {spawn_missile_speedy_fixed(1, 0, 0.4)}
		if t(52) {spawn_missile_speedy_fixed(1, 1, 0.6)}
		
		if t(55) {spawn_missile_exploding_left(0) spawn_coin(0.75, 0.75)}
		if t(56) {spawn_missile_exploding_right(0)}
		if t(57) {spawn_missile_regular_left(0)}
		if t(58) {spawn_missile_regular_right(0)}
		
		if t(59) {spawn_missile_exploding_left(0) spawn_powerup(powerupType.regen, 0.75, 0.75)}
		if t(60) {spawn_missile_exploding_right(0)}
		if t(61) {spawn_missile_regular_left(0)}
		if t(62) {spawn_missile_regular_right(0)}
		
		if t(65) {spawn_missile_exploding_left(1) spawn_coin(0.25, 0.5)}
		if t(66) {spawn_missile_exploding_right(1)}
		if t(67) {spawn_missile_regular_left(0)}
		if t(68) {spawn_missile_regular_right(0)}
		
		if t(69) {spawn_missile_exploding_left(1) spawn_powerup(powerupType.life, 0.25, 0.8)}
		if t(70) {spawn_missile_exploding_right(1)}
		if t(71) {spawn_missile_regular_left(0)}
		if t(72) {spawn_missile_regular_right(0)}
		
		if t(74) {spawn_missile_regular_top(1)}
		if t(75) {spawn_missile_regular_top(1)}
		if t(76) {spawn_missile_regular_bottom(1)}
		if t(77) {spawn_missile_regular_bottom(1)}
		
		if t(78) {spawn_missile_regular_left(1) spawn_powerup(powerupType.shield, 0.25, 0.8)}
		if t(79) {spawn_missile_regular_right(1)}
		if t(80) {spawn_missile_regular_left(1)}
		if t(81) {spawn_missile_regular_right(1)}
		
		if t(82) {spawn_missile_exploding_fixed(0, 0, 0.35)}
		if t(83) {spawn_missile_exploding_fixed(0, 1, 0.65)}
		if t(84) {spawn_missile_regular_left(1)}
		if t(85) {spawn_missile_regular_right(1)}
		
		if t(86) {spawn_missile_regular_left(1) spawn_coin(0.75, 0.25)}
		if t(87) {spawn_missile_regular_right(1)}
		if t(88) {spawn_missile_small_left(0)} if t(88.2) {spawn_missile_small_left(0)} if t(88.4) {spawn_missile_small_left(0)}
		if t(89) {spawn_missile_small_right(0)} if t(89.2) {spawn_missile_small_right(0)} if t(89.4) {spawn_missile_small_right(0)}
		
		if t(92) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_missile_regular_right(0) spawn_powerup(powerupType.regen, 0.2, 0.2) spawn_coin(0.75, 0.75)}
		if t(92.5) {spawn_missile_regular_fixed(0, 0, 0.5)}
		if t(93) {spawn_missile_regular_fixed(0, 0, 0.7) spawn_missile_regular_right(1)}
		if t(93.5) {spawn_missile_regular_fixed(0, 0, 0.4)}
		if t(94) {spawn_missile_regular_fixed(0, 0, 0.6) spawn_missile_regular_right(2)}
		
		if t(96) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_missile_regular_top(0) spawn_coin(0.75, 0.5)}
		if t(96.5) {spawn_missile_regular_fixed(0, 0, 0.5)}
		if t(97) {spawn_missile_regular_fixed(0, 0, 0.7) spawn_missile_regular_top(0)}
		if t(97.5) {spawn_missile_regular_fixed(0, 0, 0.4)}
		if t(98) {spawn_missile_regular_fixed(0, 0, 0.6) spawn_missile_regular_top(1)}
		
		if t(100) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_missile_regular_bottom(0)}
		if t(100.5) {spawn_missile_regular_fixed(0, 0, 0.5)}
		if t(101) {spawn_missile_regular_fixed(0, 0, 0.7) spawn_missile_regular_bottom(0)}
		if t(101.5) {spawn_missile_regular_fixed(0, 0, 0.4)}
		if t(102) {spawn_missile_regular_fixed(0, 0, 0.6) spawn_missile_regular_bottom(1)}
			
		if t(104) {spawn_missile_regular_fixed(0, 0, 0.3) spawn_powerup(powerupType.shield, 0.25, 0.75)}
		if t(104.5) {spawn_missile_regular_fixed(0, 0, 0.5)}
		if t(105) {spawn_missile_regular_fixed(0, 0, 0.7)}
		if t(105.5) {spawn_missile_regular_fixed(0, 0, 0.4)}
		if t(106) {spawn_missile_regular_fixed(0, 0, 0.6) spawn_missile_exploding_fixed(0, 1, 0.4)}
			
		if t(108) {spawn_missile_regular_top(0) spawn_missile_small_left(1) spawn_coin(0.25, 0.75)} if t(108.2) {spawn_missile_small_left(1)} if t(108.4) {spawn_missile_small_left(1)}
		if t(109) {spawn_missile_regular_right(1) spawn_coin(0.25, 0.25)}
		if t(110) {spawn_missile_regular_bottom(0) spawn_missile_small_left(1)} if t(110.2) {spawn_missile_small_left(1)} if t(110.4) {spawn_missile_small_left(1)}
		if t(111) {spawn_missile_regular_right(1)}
		if t(112) {spawn_missile_regular_fixed(2, 0, 0.4, true)}
		if t(113) {spawn_missile_regular_fixed(2, 0, 0.6, true)}
		if t(114) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
		
		
		
		
	}
	break;
	
	case 5: {
		if t(1) {spawn_missile_regular_top(1)} 
		if t(2) {spawn_missile_regular_bottom(1)}
		if t(3) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		if t(4) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		
		if t(5) {spawn_missile_regular_top(1)} 
		if t(6) {spawn_missile_regular_bottom(1)}
		if t(7) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		if t(8) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		
		if t(9) {spawn_missile_regular_top(1) spawn_coin(0.2, 0.6)} 
		if t(10) {spawn_missile_regular_bottom(1)}
		if t(11) {spawn_missile_regular_top(1) spawn_missile_speedy_left(0)}
		if t(12) {spawn_missile_regular_bottom(1) spawn_missile_speedy_right(0) spawn_coin(0.8, 0.4)}
		
		if t(13) {spawn_missile_small_left(0)} if t(13.2) {spawn_missile_small_left(0)} if t(13.4) {spawn_missile_small_left(0)}
		if t(14) {spawn_missile_small_right(0)} if t(14.2) {spawn_missile_small_right(0)} if t(14.4) {spawn_missile_small_right(0)}
		
		if t(16) {spawn_missile_regular_left(0) spawn_missile_regular_top(0)}
		if t(17) {spawn_missile_regular_top(0) spawn_missile_regular_right(0)}
		if t(18) {spawn_missile_regular_right(0) spawn_missile_regular_bottom(0)}
		if t(19) {spawn_missile_regular_bottom(0) spawn_missile_regular_left(0)}
		
		if t(21) {spawn_missile_regular_left(0) spawn_missile_regular_top(0) spawn_coin(0.5, 0.2)}
		if t(22) {spawn_missile_regular_top(0) spawn_missile_regular_right(0)}
		if t(23) {spawn_missile_regular_right(0) spawn_missile_regular_bottom(0)}
		if t(24) {spawn_missile_regular_bottom(0) spawn_missile_regular_left(0) spawn_powerup(powerupType.shield, 0.2, 0.8) spawn_coin(0.5, 0.8)}
		
		if t(27) {spawn_missile_exploding_left(0) spawn_missile_regular_top(1)}
		if t(28) {spawn_missile_regular_top(0) spawn_missile_regular_right(0)}
		if t(29) {spawn_missile_regular_left(0) spawn_missile_regular_bottom(1)}
		if t(30) {spawn_missile_small_right(0)} if t(30.2) {spawn_missile_small_right(0)} if t(30.4) {spawn_missile_small_right(0)}
		
		if t(33) {spawn_missile_exploding_left(0) spawn_missile_regular_top(1)}
		if t(34) {spawn_missile_regular_top(0) spawn_missile_regular_right(0)}
		if t(35) {spawn_missile_regular_left(0) spawn_missile_regular_bottom(1)}
		if t(36) {spawn_missile_small_right(0)} if t(36.2) {spawn_missile_small_right(0)} if t(36.4) {spawn_missile_small_right(0)}
		
		if t(38) {spawn_missile_small_fixed(0, 0, 0.2, 0.3) spawn_missile_small_fixed(0, 0, 0.25, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.7, 0.3) spawn_missile_small_fixed(0, 1, 0.75, 0.3)}
		if t(39) {spawn_missile_small_fixed(0, 0, 0.4, 0.3) spawn_missile_small_fixed(0, 0, 0.45, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.5, 0.3) spawn_missile_small_fixed(0, 1, 0.55, 0.3)}
		if t(40) {spawn_missile_small_fixed(0, 0, 0.6, 0.3) spawn_missile_small_fixed(0, 0, 0.65, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.3, 0.3) spawn_missile_small_fixed(0, 1, 0.35, 0.3)}
		if t(41) {spawn_missile_small_fixed(0, 0, 0.8, 0.3) spawn_missile_small_fixed(0, 0, 0.85, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.1, 0.3) spawn_missile_small_fixed(0, 1, 0.15, 0.3)}
		if t(42) {spawn_missile_small_fixed(0, 0, 0.9, 0.3) spawn_missile_small_fixed(0, 0, 0.95, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.2, 0.3) spawn_missile_small_fixed(0, 1, 0.25, 0.3)}
		if t(43) {spawn_missile_small_fixed(0, 0, 0.7, 0.3) spawn_missile_small_fixed(0, 0, 0.75, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.4, 0.3) spawn_missile_small_fixed(0, 1, 0.45, 0.3)}
		if t(44) {spawn_missile_small_fixed(0, 0, 0.5, 0.3) spawn_missile_small_fixed(0, 0, 0.55, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.6, 0.3) spawn_missile_small_fixed(0, 1, 0.65, 0.3)}
		if t(45) {spawn_missile_small_fixed(0, 0, 0.3, 0.3) spawn_missile_small_fixed(0, 0, 0.35, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.8, 0.3) spawn_missile_small_fixed(0, 1, 0.85, 0.3)}
		
		if t(46) {spawn_missile_small_fixed(0, 0, 0.2, 0.3) spawn_missile_small_fixed(0, 0, 0.25, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.7, 0.3) spawn_missile_small_fixed(0, 1, 0.75, 0.3) spawn_coin(0.25, 0.25)}
		if t(47) {spawn_missile_small_fixed(0, 0, 0.4, 0.3) spawn_missile_small_fixed(0, 0, 0.45, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.5, 0.3) spawn_missile_small_fixed(0, 1, 0.55, 0.3) spawn_missile_speedy_fixed(0, 0, 0.25)}
		if t(48) {spawn_missile_small_fixed(0, 0, 0.6, 0.3) spawn_missile_small_fixed(0, 0, 0.65, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.3, 0.3) spawn_missile_small_fixed(0, 1, 0.35, 0.3)}
		if t(49) {spawn_missile_small_fixed(0, 0, 0.8, 0.3) spawn_missile_small_fixed(0, 0, 0.85, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.1, 0.3) spawn_missile_small_fixed(0, 1, 0.15, 0.3) spawn_coin(0.75, 0.75)}
		if t(50) {spawn_missile_small_fixed(0, 0, 0.9, 0.3) spawn_missile_small_fixed(0, 0, 0.95, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.2, 0.3) spawn_missile_small_fixed(0, 1, 0.25, 0.3)}
		if t(51) {spawn_missile_small_fixed(0, 0, 0.7, 0.3) spawn_missile_small_fixed(0, 0, 0.75, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.4, 0.3) spawn_missile_small_fixed(0, 1, 0.45, 0.3) spawn_missile_speedy_fixed(0, 1, 0.75)}
		if t(52) {spawn_missile_small_fixed(0, 0, 0.5, 0.3) spawn_missile_small_fixed(0, 0, 0.55, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.6, 0.3) spawn_missile_small_fixed(0, 1, 0.65, 0.3)}
		if t(53) {spawn_missile_small_fixed(0, 0, 0.3, 0.3) spawn_missile_small_fixed(0, 0, 0.35, 0.3) 
		spawn_missile_small_fixed(0, 1, 0.8, 0.3) spawn_missile_small_fixed(0, 1, 0.85, 0.3)}
		
		if t(55) {spawn_missile_regular_top(0)} if t(55.5) {spawn_missile_regular_top(0)} if t(56) {spawn_missile_regular_top(0)} 
		if t(57) {spawn_missile_regular_bottom(0)} if t(57.5) {spawn_missile_regular_bottom(0)} if t(58) {spawn_missile_regular_bottom(0) spawn_powerup(powerupType.regen, 0.8, 0.8)} 
		
		if t(59) {spawn_missile_exploding_fixed(0, 0, 0.4) spawn_coin(0.5, 0.2)}
		if t(60) {spawn_missile_exploding_fixed(0, 1, 0.6) spawn_coin(0.8, 0.5)}
		if t(61) {spawn_missile_exploding_fixed(0, 0, 0.4) spawn_coin(0.5, 0.8)}
		if t(62) {spawn_missile_exploding_fixed(0, 1, 0.6) spawn_coin(0.2, 0.5)}
		
		if t(63) {spawn_missile_speedy_fixed(0, 0, 0.3)}
		if t(64) {spawn_missile_speedy_fixed(0, 1, 0.7)}
		if t(65) {spawn_missile_speedy_fixed(1, 0, 0.3) spawn_missile_regular_top(1) spawn_powerup(powerupType.life, 0.5, 0.25)}
		if t(66) {spawn_missile_speedy_fixed(1, 1, 0.7) spawn_missile_regular_bottom(1)}
		
		if t(67) {spawn_missile_exploding_fixed(0, 0, 0.4)}
		if t(68) {spawn_missile_exploding_fixed(0, 1, 0.6)}
		if t(69) {spawn_missile_exploding_fixed(0, 0, 0.4)}
		if t(70) {spawn_missile_exploding_fixed(0, 1, 0.6)}
		
		if t(71) {spawn_missile_speedy_fixed(0, 0, 0.3)}
		if t(72) {spawn_missile_speedy_fixed(0, 1, 0.7)}
		if t(73) {spawn_missile_speedy_fixed(1, 0, 0.3) spawn_missile_regular_top(1)}
		if t(74) {spawn_missile_speedy_fixed(1, 1, 0.7) spawn_missile_regular_bottom(1) spawn_powerup(powerupType.shield, 0.5, 0.25)}
		
		if t(76) {spawn_missile_small_fixed(1, 0.2, 0) spawn_missile_small_fixed(1, 0.4, 1) spawn_coin(0.75, 0.75)}
		if t(77) {spawn_missile_small_fixed(1, 0.3, 0) spawn_missile_small_fixed(1, 0.8, 1) spawn_missile_speedy_left(0)}
		if t(78) {spawn_missile_small_fixed(1, 0.8, 0) spawn_missile_small_fixed(1, 0.3, 1)}
		if t(79) {spawn_missile_small_fixed(1, 0.6, 0) spawn_missile_small_fixed(1, 0.7, 1) spawn_missile_speedy_right(0)}
		if t(80) {spawn_missile_small_fixed(1, 0.4, 0) spawn_missile_small_fixed(1, 0.2, 1) spawn_coin(0.25, 0.75)}
		if t(81) {spawn_missile_small_fixed(1, 0.5, 0) spawn_missile_small_fixed(1, 0.6, 1) spawn_missile_speedy_left(1)}
		if t(82) {spawn_missile_small_fixed(1, 0.7, 0) spawn_missile_small_fixed(1, 0.75, 1)}
		if t(83) {spawn_missile_small_fixed(1, 0.25, 0) spawn_missile_small_fixed(1, 0.45, 1) spawn_missile_speedy_right(1)}
		
		if t(85) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
		if t(86) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		if t(87) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
		if t(88) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		
		if t(89) {spawn_missile_small_left(1)} if t(89.2) {spawn_missile_small_left(1)} if t(89.4) {spawn_missile_small_left(1)}
		if t(90) {spawn_missile_small_right(1)} if t(90.2) {spawn_missile_small_right(1)} if t(90.4) {spawn_missile_small_right(1)}
		
		if t(91) {spawn_missile_small_left(2)} if t(91.2) {spawn_missile_small_left(2)} if t(91.4) {spawn_missile_small_left(2)}
		if t(92) {spawn_missile_small_right(2)} if t(92.2) {spawn_missile_small_right(2)} if t(92.4) {spawn_missile_small_right(2)}
		
		if t(93) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_powerup(powerupType.regen, 0.2, 0.2)} 
		if t(93.5) {spawn_missile_regular_fixed(0, 0, 0.4, true)}
		if t(94) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(0, 0, 0.4, true, 15) spawn_missile_regular_fixed(0, 0, 0.4, true, -15)}
		
		if t(95) {spawn_missile_regular_fixed(0, 0, 0.4, true)} 
		if t(95.5) {spawn_missile_regular_fixed(0, 0, 0.4, true)}
		if t(96) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(0, 0, 0.4, true, 15) spawn_missile_regular_fixed(0, 0, 0.4, true, -15)}
		
		if t(97) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_speedy_right(1)} 
		if t(97.5) {spawn_missile_regular_fixed(0, 0, 0.4, true)}
		if t(98) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(0, 0, 0.4, true, 15) spawn_missile_regular_fixed(0, 0, 0.4, true, -15)}
		
		if t(99) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_speedy_right(1)} 
		if t(99.5) {spawn_missile_regular_fixed(0, 0, 0.4, true)}
		if t(100) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(0, 0, 0.4, true, 15) spawn_missile_regular_fixed(0, 0, 0.4, true, -15)}
		
		if t(103) {spawn_missile_exploding_fixed(0, 1, 0.5) spawn_coin(0.3, 0.3) spawn_powerup(powerupType.shield, 0.7, 0.7)}
		if t(104) {spawn_missile_exploding_fixed(0, 0, 0.5)}
		if t(105) {spawn_missile_speedy_left(1)}
		if t(106) {spawn_missile_speedy_right(1)}
		if t(107) {spawn_missile_speedy_fixed(2, 0, 0.1)}
		if t(108) {spawn_missile_speedy_fixed(2, 1, 0.1)}
		
		
		if t(109) {spawn_missile_regular_left(2)}
		if t(110) {spawn_missile_regular_top(1)}
		if t(111) {spawn_missile_regular_right(2)}
		if t(112) {spawn_missile_regular_bottom(1)}
		
		if t(113) {spawn_missile_regular_left(1) spawn_missile_regular_fixed(0, 1, random_range(0.4, 0.6))}
		if t(114) {spawn_missile_regular_right(1) spawn_missile_regular_fixed(0, 0, random_range(0.2, 0.4))}
		if t(115) {spawn_missile_regular_left(1) spawn_missile_regular_fixed(0, 1, random_range(0.6, 0.8))}
		if t(116) {spawn_missile_regular_right(1) spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))}
		
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
		
	}
	break;
	
	case 6: {
		if t(1) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		if t(2) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
		if t(3) {spawn_missile_regular_left(0) spawn_missile_regular_right(0)}
		if t(4) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
		if t(5) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		if t(6) {spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		if t(7) {spawn_missile_regular_left(1) spawn_missile_regular_right(1)}
		if t(8) {spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		
		if t(9) {spawn_missile_regular_left(2) spawn_missile_regular_right(2) spawn_coin(0.75, 0.25)}
		if t(10) {spawn_missile_regular_top(2)}
		if t(11) {spawn_missile_regular_left(2) spawn_missile_regular_right(2) spawn_coin(0.25, 0.25)}
		if t(12) {spawn_missile_regular_top(2)}
		if t(13) {spawn_missile_regular_left(1) spawn_missile_regular_right(1) spawn_coin(0.25, 0.75)}
		if t(14) {spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		if t(15) {spawn_coin(0.75, 0.75) spawn_missile_small_left(0)} if t(15.2) {spawn_missile_small_left(0)} if t(15.4) {spawn_missile_small_left(0)}
		if t(16) {spawn_missile_small_right(0)} if t(16.2) {spawn_missile_small_right(0)} if t(16.4) {spawn_missile_small_right(0)}
		
		if t(17) {spawn_missile_exploding_right(0)}
		if t(18) {spawn_missile_exploding_left(0)}
		if t(19) {spawn_missile_exploding_right(0)}
		if t(20) {spawn_missile_exploding_left(0)}
		
		if t(21) {spawn_missile_regular_top(1)}
		if t(22) {spawn_missile_regular_bottom(1)}
		if t(23) {spawn_missile_speedy_left(1)}
		if t(24) {spawn_missile_speedy_right(1)}
		
		if t(25) {spawn_missile_exploding_right(0)}
		if t(26) {spawn_missile_exploding_left(0)}
		if t(27) {spawn_missile_exploding_right(0)}
		if t(28) {spawn_missile_exploding_left(0)}
		
		if t(29) {spawn_missile_regular_top(1) spawn_coin(0.25, 0.75)}
		if t(30) {spawn_missile_regular_bottom(1)}
		if t(31) {spawn_missile_speedy_left(1)}
		if t(32) {spawn_missile_speedy_right(1) spawn_powerup(powerupType.shield, 0.25, 0.75)}
		
		if t(33) {spawn_missile_regular_fixed(0, 0.5, 0, true)}
		if t(33.5) {spawn_missile_regular_fixed(0, 0.6, 0, true)}
		if t(34) {spawn_missile_regular_fixed(0, 0.7, 0, true)}
		if t(34.5) {spawn_missile_regular_fixed(0, 0.8, 0, true)}
		
		if t(36) {spawn_missile_regular_fixed(0, 1, 0.3, true) spawn_coin(0.75, 0.25)}
		if t(36.5) {spawn_missile_regular_fixed(0, 1, 0.4, true)}
		if t(37) {spawn_missile_regular_fixed(0, 1, 0.5, true)}
		if t(37.5) {spawn_missile_regular_fixed(0, 1, 0.6, true)}
		
		if t(39) {spawn_missile_regular_fixed(0, 0.6, 1, true) spawn_coin(0.25, 0.75)}
		if t(39.5) {spawn_missile_regular_fixed(0, 0.5, 1, true)}
		if t(40) {spawn_missile_regular_fixed(0, 0.4, 1, true)}
		if t(40.5) {spawn_missile_regular_fixed(0, 0.3, 1, true)}
		
		if t(41) {spawn_missile_small_left(1)} if t(41.2) {spawn_missile_small_left(1)} if t(41.4) {spawn_missile_small_left(1)}
		if t(42) {spawn_missile_small_right(1)} if t(42.2) {spawn_missile_small_right(1)} if t(42.4) {spawn_missile_small_right(1)}
		
		
		if t(43) {spawn_powerup(powerupType.regen, 0.2, 0.2) spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))}
		if t(44) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9)) spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))}
		if t(45) {spawn_coin(0.5, 0.2) spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))}
		if t(46) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))  spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))}
		
		if t(47) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))}
		if t(48) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9)) spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_speedy_fixed(1, 1, 0.4)}
		if t(49) {spawn_coin(0.5, 0.8) spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))}
		if t(50) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))  spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_speedy_fixed(1, 1, 0.6)}
		
		if t(51) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))
			spawn_missile_regular_top(1)}
		if t(52) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9)) spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_regular_top(1)}
		if t(53) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))
			spawn_missile_regular_bottom(1)}
		if t(54) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))  spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_regular_bottom(1)}
		
		if t(55) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))
			spawn_missile_speedy_fixed(1, 1, 0.4)}
		if t(56) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9)) spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_speedy_fixed(1, 1, 0.4)}
		if t(57) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))
			spawn_missile_speedy_fixed(1, 1, 0.6)}
		if t(58) {spawn_missile_regular_fixed(0, 0, random_range(0.1, 0.5)) spawn_missile_regular_fixed(0, 0, random_range(0.5, 0.9))  spawn_missile_regular_fixed(0, 0, random_range(0.4, 0.6))
			spawn_missile_speedy_fixed(1, 1, 0.6)}
			
		if t(59) {spawn_powerup(powerupType.life, 0.2, 0.8) spawn_missile_small_fixed(1, 0.5, 0)}
		if t(59.5) {spawn_missile_small_fixed(1, 0.4, 0) spawn_missile_small_fixed(1, 0.6, 0)}
		if t(60) {spawn_missile_small_fixed(1, 0.3, 0) spawn_missile_small_fixed(1, 0.7, 0)}
		if t(60.5) {spawn_missile_small_fixed(1, 0.2, 0) spawn_missile_small_fixed(1, 0.8, 0)}
		
		if t(62) {spawn_missile_small_fixed(1, 0, 0.5) spawn_missile_regular_right(0)}
		if t(62.5) {spawn_missile_small_fixed(1, 0, 0.4) spawn_missile_small_fixed(1, 0, 0.6)}
		if t(63) {spawn_missile_small_fixed(1, 0, 0.3) spawn_missile_small_fixed(1, 0, 0.7) spawn_missile_regular_right(0)}
		if t(63.5) {spawn_missile_small_fixed(1, 0, 0.2) spawn_missile_small_fixed(1, 0, 0.8)}
		
		if t(65) {spawn_missile_small_fixed(1, 0.5, 0) spawn_coin(0.35, 0.2)}
		if t(65.5) {spawn_missile_small_fixed(1, 0.4, 0) spawn_missile_small_fixed(1, 0.6, 0)}
		if t(66) {spawn_missile_small_fixed(1, 0.3, 0) spawn_missile_small_fixed(1, 0.7, 0) spawn_coin(0.65, 0.2)}
		if t(66.5) {spawn_missile_small_fixed(1, 0.2, 0) spawn_missile_small_fixed(1, 0.8, 0)}
		
		if t(68) {spawn_missile_small_fixed(1, 1, 0.5) spawn_missile_regular_left(0) spawn_powerup(powerupType.shield, 0.5, 0.25)}
		if t(68.5) {spawn_missile_small_fixed(1, 1, 0.4) spawn_missile_small_fixed(1, 1, 0.6) spawn_missile_regular_left(0)}
		if t(69) {spawn_missile_small_fixed(1, 1, 0.3) spawn_missile_small_fixed(1, 1, 0.7) spawn_missile_regular_left(0)}
		if t(69.5) {spawn_missile_small_fixed(1, 1, 0.2) spawn_missile_small_fixed(1, 1, 0.8) spawn_missile_regular_left(0)}
		
		if t(71) {spawn_missile_small_fixed(1, 0.5, 0) spawn_missile_regular_left(0)}
		if t(71.5) {spawn_missile_small_fixed(1, 0.4, 0) spawn_missile_small_fixed(1, 0.6, 0)}
		if t(72) {spawn_missile_small_fixed(1, 0.3, 0) spawn_missile_small_fixed(1, 0.7, 0) spawn_missile_regular_right(0)}
		if t(72.5) {spawn_missile_small_fixed(1, 0.2, 0) spawn_missile_small_fixed(1, 0.8, 0)}
		if t(73) {spawn_missile_regular_left(0)}
		
		if t(74) {spawn_missile_small_fixed(1, 0.5, 1) spawn_missile_regular_right(0)}
		if t(74.5) {spawn_missile_small_fixed(1, 0.4, 1) spawn_missile_small_fixed(1, 0.6, 1)}
		if t(75) {spawn_missile_small_fixed(1, 0.3, 1) spawn_missile_small_fixed(1, 0.7, 1) spawn_missile_regular_left(0)}
		if t(75.5) {spawn_missile_small_fixed(1, 0.2, 1) spawn_missile_small_fixed(1, 0.8, 1)}
		if t(76) {spawn_missile_regular_right(0)}
		
		if t(80) {spawn_missile_scatter(0, 0, 0.7)}
		if t(81) {spawn_missile_scatter(0, 0, 0.4)}
		
		if t(83) {spawn_powerup(powerupType.regen, 0.8, 0.8) spawn_missile_scatter(0, 1, 0.7)}
		if t(84) {spawn_missile_scatter(0, 1, 0.4)}
		
		if t(87) {spawn_missile_scatter(0, 0, 0.5)}
		if t(88) {spawn_missile_scatter(0, 1, 0.6)}
		
		if t(92) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_small_fixed(0, 0, 0.4) spawn_missile_small_fixed(1, 1, 0.6)}
			
		if t(93) {spawn_missile_regular_top(0)
			spawn_missile_small_fixed(1, 0, 0.3) spawn_missile_small_fixed(0, 1, 0.7)}
			
		if t(94) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_small_fixed(0, 0, 0.2) spawn_missile_small_fixed(1, 1, 0.8)}
		
		if t(95) {spawn_missile_regular_bottom(0)
			spawn_missile_small_fixed(1, 0, 0.1) spawn_missile_small_fixed(0, 1, 0.9)}
			
		if t(96) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_small_fixed(0, 0, 0.1) spawn_missile_small_fixed(1, 1, 0.9)}
			
		if t(97) {spawn_missile_regular_bottom(0) spawn_powerup(powerupType.shield, 0.2, 0.2) 
			spawn_missile_small_fixed(1, 0, 0.2) spawn_missile_small_fixed(0, 1, 0.8)}
			
		if t(98) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_small_fixed(0, 0, 0.3) spawn_missile_small_fixed(1, 1, 0.7)}
		
		if t(99) {spawn_missile_regular_top(0)
			spawn_missile_small_fixed(1, 0, 0.4) spawn_missile_small_fixed(0, 1, 0.6)}
			
			
		if t(102) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)}
			
		if t(103) {spawn_coin(0.2, 0.5) spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
			
		if t(104) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_speedy_fixed(0, 0, 0.35)}
		
		if t(105) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)
			spawn_missile_speedy_fixed(0, 1, 0.35)}
			
		if t(106) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)}
			
		if t(107) {spawn_coin(0.7, 0.5) spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)}
			
		if t(108) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)
			spawn_missile_speedy_fixed(0, 0, 0.35)}
		
		if t(109) {spawn_missile_regular_top(0) spawn_missile_regular_bottom(0)
			spawn_missile_speedy_fixed(0, 1, 0.35)}
			
		if t(110) {spawn_missile_scatter(1, 0, 0.3)}
		if t(111) {spawn_missile_scatter(1, 1, 0.4)}
		
		if t(114) {spawn_missile_regular_top(0)}
		if t(115) {spawn_missile_regular_bottom(0)}
		
		if t(116) {spawn_missile_small_left(0)} if t(116.2) {spawn_missile_small_left(0)} if t(116.4) {spawn_missile_small_left(0)}
		if t(117) {spawn_missile_small_left(0)} if t(117.2) {spawn_missile_small_left(0)} if t(117.4) {spawn_missile_small_left(0)}
		
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
	}
	break;
	
	case 7: {
		if t(1) {spawn_missile_regular_left(1)}
		if t(1.5) {spawn_missile_regular_right(1)}
		if t(2) {spawn_missile_regular_top(1)}
		if t(2.5) {spawn_missile_regular_bottom(1)}
		if t(4) {spawn_missile_regular_fixed(0, 0, 0.3, true) spawn_missile_regular_fixed(0, 1, 0.3, true)}
		if t(4.5) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_regular_fixed(0, 1, 0.4, true)}
		
		if t(5) {spawn_missile_small_right(0)} if t(5.2) {spawn_missile_small_right(0)} if t(5.4) {spawn_missile_small_right(0)}
		if t(6) {spawn_missile_small_left(0)} if t(6.2) {spawn_missile_small_left(0)} if t(6.4) {spawn_missile_small_left(0)}
		
		if t(9) {spawn_missile_scatter(0, 0, 0.3) spawn_missile_regular_top(1) spawn_coin(0.25, 0.25)}
		if t(10) {spawn_missile_scatter(0, 1, 0.4) spawn_missile_regular_top(1) spawn_coin(0.25, 0.35)}
		if t(11) {spawn_missile_scatter(0, 0, 0.5) spawn_missile_regular_bottom(1) spawn_coin(0.75, 0.75)}
		if t(12) {spawn_missile_scatter(0, 1, 0.6) spawn_missile_regular_bottom(1) spawn_coin(0.75, 0.65)}
		
		if t(14) {spawn_missile_regular_top(1)}
		if t(15) {spawn_missile_regular_bottom(1)}
		if t(16) {spawn_missile_regular_top(1)}
		if t(17) {spawn_missile_regular_bottom(1)}
		
		if t(18) {spawn_missile_regular_top(1) spawn_missile_small_right(1)} if t(18.2) {spawn_missile_small_right(1)} if t(18.4) {spawn_missile_small_right(1)}
		
		if t(19) {spawn_missile_regular_bottom(1) spawn_powerup(powerupType.shield, 0.3, 0.3)}
		if t(20) {spawn_missile_regular_top(1) spawn_missile_small_left(1)} if t(20.2) {spawn_missile_small_left(1)} if t(20.4) {spawn_missile_small_left(1)}
		if t(21) {spawn_missile_regular_bottom(1)}
		
		if t(23) {spawn_missile_regular_left(2)}
		if t(24) {spawn_missile_regular_left(2) spawn_missile_exploding_fixed(0, 1, 0.3)}
		if t(25) {spawn_missile_regular_left(2)}
		if t(26) {spawn_missile_regular_left(2) spawn_missile_exploding_fixed(0, 1, 0.3)}
		
		if t(27) {spawn_missile_regular_left(2) spawn_missile_regular_top(0)}
		if t(28) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true) spawn_missile_regular_top(1)}
		if t(29) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true) spawn_missile_regular_bottom(0)}
		if t(30) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true) spawn_missile_regular_bottom(1)}
		
		if t(31) {spawn_missile_regular_left(1)}
		if t(32) {spawn_missile_regular_left(1) spawn_missile_regular_fixed(0, 1, random_range(0.3, 0.7))}
		if t(33) {spawn_missile_regular_left(1) spawn_missile_regular_fixed(0, 1, random_range(0.3, 0.7))}
		if t(34) {spawn_missile_regular_left(1) spawn_missile_regular_fixed(0, 1, random_range(0.3, 0.7))}
		
		if t(35) {spawn_missile_regular_left(2)}
		if t(36) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true)}
		if t(37) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true)}
		if t(38) {spawn_missile_regular_left(2) spawn_missile_regular_fixed(1, 1, 0.6, true)}
		
		if t(39) {spawn_missile_regular_left(1)}
		if t(40) {spawn_missile_regular_left(1) spawn_missile_small_fixed(0, 1, random_range(0.3, 0.7)) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 0)}
		if t(41) {spawn_missile_regular_left(1) spawn_missile_small_fixed(0, 1, random_range(0.3, 0.7)) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 0)}
		if t(42) {spawn_missile_regular_left(1) spawn_missile_small_fixed(0, 1, random_range(0.3, 0.7)) spawn_missile_small_fixed(0, random_range(0.3, 0.7), 0)}
	
		if t(45) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.2, 0) spawn_coin(0.25, 0.75) spawn_powerup(powerupType.regen, 0.7, 0.7) spawn_missile_regular_left(0)}
		if t(46) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.4, 0) spawn_coin(0.25, 0.65) spawn_missile_regular_left(0)}
		if t(47) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.6, 0) spawn_coin(0.75, 0.25) spawn_missile_regular_right(0)}
		if t(48) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.8, 0) spawn_coin(0.75, 0.35) spawn_missile_regular_right(0)}
		if t(49) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_missile_speedy_fixed(1, 0, 0.3)}
		if t(50) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		if t(51) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_missile_exploding_fixed(1, 1, 0.6)}
		if t(52) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		
		if t(53) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.2, 0) spawn_powerup(powerupType.life, 0.2, 0.25)}
		if t(54) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.4, 0)}
		if t(55) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.6, 0)}
		if t(56) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.8, 0)}
		if t(57) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_missile_speedy_fixed(1, 1, 0.3)}
		if t(58) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		if t(59) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_missile_exploding_fixed(1, 0, 0.6)}
		if t(60) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		
		if t(61) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.1, 0) spawn_coin(0.75, 0.25)}
		if t(62) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.3, 0) spawn_coin(0.25, 0.75)}
		if t(63) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, 0.5, 0)}
		if t(64) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, 0.7, 0)}
		if t(65) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0) spawn_missile_scatter(1, 1, 0.3)}
		if t(66) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		if t(67) {spawn_missile_small_bottom(0) spawn_missile_small_fixed(1, random_range(0.25, 0.75), 0)}
		if t(68) {spawn_missile_small_bottom(0) spawn_missile_regular_fixed(1, random_range(0.25, 0.75), 0)}
		
		if t(70) {spawn_missile_regular_left(2) spawn_missile_regular_right(2) spawn_coin(0.25, 0.75)}
		if t(71) {spawn_missile_regular_top(1) spawn_missile_regular_bottom(1) spawn_coin(0.75, 0.25)}
		if t(72) {spawn_missile_small_left(2)} if t(72.2) {spawn_missile_small_left(2)} if t(72.4) {spawn_missile_small_left(2)}
		if t(73) {spawn_missile_small_right(2)} if t(73.2) {spawn_missile_small_right(2)} if t(73.4) {spawn_missile_small_right(2)}
		
		if t(74) {spawn_missile_speedy_fixed(0, 0, 0.3)}
		if t(75) {spawn_missile_speedy_fixed(0, 1, 0.6)}
		
		if t(76) {spawn_missile_exploding_left(2)}
		if t(77) {spawn_missile_exploding_right(2)}
		
		if t(78) {spawn_missile_scatter(0, 0, 0.4) spawn_powerup(powerupType.shield, 0.3, 0.3) spawn_missile_regular_left(1)}
		if t(79) {spawn_missile_scatter(0, 1, 0.6) spawn_missile_regular_left(1)}
		if t(80) {spawn_missile_scatter(1, 0, 0.4) spawn_missile_regular_right(1)}
		if t(81) {spawn_missile_scatter(1, 1, 0.6) spawn_missile_regular_right(1)}
		
		if t(83) {spawn_missile_regular_left(2) spawn_missile_regular_right(2)}
		if t(84) {spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		if t(85) {spawn_missile_small_left(2)} if t(85.2) {spawn_missile_small_left(2)} if t(85.4) {spawn_missile_small_left(2)}
		if t(86) {spawn_missile_small_right(2)} if t(86.2) {spawn_missile_small_right(2)} if t(86.4) {spawn_missile_small_right(2)}
		
		if t(87) {spawn_missile_speedy_fixed(0, 0, 0.3)}
		if t(88) {spawn_missile_speedy_fixed(0, 1, 0.6)}
		
		if t(89) {spawn_missile_exploding_left(2)}
		if t(90) {spawn_missile_exploding_right(2)}
		
		if t(91) {spawn_missile_scatter(0, 0, 0.4) spawn_coin(0.2, 0.5) spawn_powerup(powerupType.regen, 0.3, 0.3) spawn_missile_regular_top(0)}
		if t(92) {spawn_missile_scatter(0, 1, 0.6) spawn_coin(0.5, 0.8)}
		if t(93) {spawn_missile_scatter(1, 0, 0.4) spawn_coin(0.5, 0.2) spawn_missile_regular_bottom(0)}
		if t(94) {spawn_missile_scatter(1, 1, 0.6) spawn_coin(0.8, 0.5)}
		
		if t(97) {spawn_missile_regular_fixed(1, 0, 0.5, true, 0) spawn_missile_regular_fixed(1, 0, 0.5, true, -15) spawn_missile_regular_fixed(1, 0, 0.5, true, 15)}
		if t(98) {spawn_missile_regular_fixed(1, 0, 0.5, true, 0) spawn_missile_regular_fixed(1, 0, 0.5, true, -15) spawn_missile_regular_fixed(1, 0, 0.5, true, 15)}
		if t(99) {spawn_missile_regular_right(0)}
		if t(100) {spawn_missile_regular_right(0)}
		
		if t(101) {spawn_missile_regular_fixed(1, 0, 0.5, true, 0) spawn_missile_regular_fixed(1, 0, 0.5, true, -15) spawn_missile_regular_fixed(1, 0, 0.5, true, 15)}
		if t(102) {spawn_missile_regular_fixed(1, 0, 0.5, true, 0) spawn_missile_regular_fixed(1, 0, 0.5, true, -15) spawn_missile_regular_fixed(1, 0, 0.5, true, 15)}
		if t(103) {spawn_missile_regular_right(0)}
		if t(104) {spawn_missile_regular_right(0) spawn_powerup(powerupType.shield, 0.3, 0.3)}
		
		if t(105) {spawn_missile_speedy_left(2)}
		if t(106) {spawn_missile_speedy_right(2)}
		if t(107) {spawn_missile_speedy_left(1) spawn_missile_regular_fixed(0, 0, random_range(0.3, 0.7))}
		if t(108) {spawn_missile_speedy_right(1) spawn_missile_regular_fixed(0, 1, random_range(0.3, 0.7))}
		
		if t(109) {spawn_missile_regular_fixed(1, 1, 0.5, true, 0) spawn_missile_regular_fixed(1, 1, 0.5, true, -15) spawn_missile_regular_fixed(1, 1, 0.5, true, 15)}
		if t(110) {spawn_missile_regular_fixed(1, 1, 0.5, true, 0) spawn_missile_regular_fixed(1, 1, 0.5, true, -15) spawn_missile_regular_fixed(1, 1, 0.5, true, 15)}
		if t(111) {spawn_missile_regular_left(0)}
		if t(112) {spawn_missile_regular_left(0)}
		if t(113) {spawn_missile_speedy_left(2)}
		if t(114) {spawn_missile_speedy_right(2)}
		if t(115) {spawn_missile_regular_top(2)}
		if t(116) {spawn_missile_regular_bottom(2)}
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
	
	}
	break;
	
	case 8: {
		if t(1) {spawn_missile_regular_top(0) spawn_missile_small_left(1)} if t(1.2) {spawn_missile_small_left(1)} if t(1.4) {spawn_missile_small_left(1)}
		if t(2) {spawn_missile_regular_bottom(0) spawn_missile_small_right(1)} if t(2.2) {spawn_missile_small_right(1)} if t(2.4) {spawn_missile_small_right(1)}
		
		if t(3) {spawn_missile_regular_top(0) spawn_missile_small_left(1)} if t(3.2) {spawn_missile_small_left(1)} if t(3.4) {spawn_missile_small_left(1)}
		if t(4) {spawn_missile_regular_bottom(0) spawn_missile_small_right(1)} if t(4.2) {spawn_missile_small_right(1)} if t(4.4) {spawn_missile_small_right(1)}
		
		if t(5) {spawn_missile_regular_left(0) spawn_missile_small_fixed(1, random_range(0.1, 0.5), 0)}
		if t(6) {spawn_missile_regular_right(0) spawn_missile_small_fixed(1, random_range(0.5, 0.9), 1)}
		if t(7) {spawn_missile_regular_left(0) spawn_missile_small_fixed(1, random_range(0.1, 0.5), 0)}
		if t(8) {spawn_missile_regular_right(0) spawn_missile_small_fixed(1, random_range(0.5, 0.9), 1)}
		
		if t(10) {spawn_missile_regular_fixed(1, 0, 0.4, true)}
		if t(10.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(11) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_speedy_fixed(1, 1, 0.4)}
		
		if t(12) {spawn_missile_regular_fixed(1, 0, 0.4, true)}
		if t(12.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(13) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_regular_top(0) spawn_missile_regular_right(0) spawn_missile_regular_bottom(0)}
		
		if t(14) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_coin(0.25, 0.35)}
		if t(14.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(15) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_speedy_fixed(1, 1, 0.4) spawn_coin(0.35, 0.25)}
		
		
		if t(17) {spawn_coin(0.65, 0.25) spawn_powerup(powerupType.shield, 0.3, 0.3) spawn_missile_regular_top(1) spawn_missile_small_left(2)} if t(17.2) {spawn_missile_small_left(2)} if t(17.4) {spawn_missile_small_left(2)}
		if t(18) {spawn_coin(0.75, 0.35) spawn_missile_regular_bottom(1) spawn_missile_small_right(2)} if t(18.2) {spawn_missile_small_right(2)} if t(18.4) {spawn_missile_small_right(2)}
		
		if t(19) {spawn_missile_regular_top(1) spawn_missile_small_left(2)} if t(19.2) {spawn_missile_small_left(2)} if t(19.4) {spawn_missile_small_left(2)}
		if t(20) {spawn_missile_regular_bottom(1) spawn_missile_small_right(2)} if t(20.2) {spawn_missile_small_right(2)} if t(20.4) {spawn_missile_small_right(2)}
		
		if t(21) {spawn_missile_regular_left(0) spawn_missile_small_fixed(1, random_range(0.1, 0.5), 0)}
		if t(22) {spawn_missile_regular_right(0) spawn_missile_small_fixed(1, random_range(0.5, 0.9), 1)}
		if t(23) {spawn_missile_regular_left(0) spawn_missile_small_fixed(1, random_range(0.1, 0.5), 0)}
		if t(24) {spawn_missile_regular_right(0) spawn_missile_small_fixed(1, random_range(0.5, 0.9), 1)}
		
		if t(26) {spawn_missile_regular_fixed(1, 0, 0.4, true)}
		if t(26.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(27) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_speedy_fixed(1, 1, 0.4) spawn_missile_regular_top(0)}
		
		if t(28) {spawn_missile_regular_fixed(1, 0, 0.4, true)}
		if t(28.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(29) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_regular_top(1) spawn_missile_regular_right(1) spawn_missile_regular_bottom(1)}
		
		if t(30) {spawn_missile_regular_fixed(1, 0, 0.4, true)}
		if t(30.5) {spawn_missile_regular_fixed(1, 0, 0.4, true, 4)}
		if t(31) {spawn_missile_regular_fixed(1, 0, 0.4, true, -4) spawn_missile_speedy_fixed(1, 1, 0.4) spawn_missile_regular_bottom(0)}
		
		if t(33) {spawn_missile_small_fixed(1, 0.2, 0) spawn_coin(0.25, 0.65)}
		if t(33.5) {spawn_missile_small_fixed(1, 0.3, 0)}
		if t(34) {spawn_missile_small_fixed(1, 0.4, 0) spawn_coin(0.35, 0.75)}
		if t(34.5) {spawn_missile_small_fixed(1, 0.5, 0)}
		if t(35) {spawn_missile_small_fixed(1, 0.6, 0) spawn_missile_exploding_left(2)}
		
		if t(36) {spawn_missile_small_fixed(1, 1, 0.2) spawn_powerup(powerupType.regen, 0.7, 0.7)}
		if t(36.5) {spawn_missile_small_fixed(1, 1, 0.3)}
		if t(37) {spawn_missile_small_fixed(1, 1, 0.4) spawn_coin(0.65, 0.75)}
		if t(37.5) {spawn_missile_small_fixed(1, 1, 0.5)}
		if t(38) {spawn_missile_small_fixed(1, 1, 0.6) spawn_missile_exploding_right(2) spawn_coin(0.75, 0.65)}
		
		if t(39) {spawn_missile_small_fixed(1, 0.8, 1)}
		if t(39.5) {spawn_missile_small_fixed(1, 0.7, 1)}
		if t(40) {spawn_missile_small_fixed(1, 0.6, 1) spawn_missile_regular_right(0)}
		if t(40.5) {spawn_missile_small_fixed(1, 0.5, 1) spawn_missile_regular_top(0)}
		if t(41) {spawn_missile_small_fixed(1, 0.4, 1) spawn_missile_exploding_left(2)}
		
		if t(42) {spawn_missile_small_fixed(1, 0, 0.8)}
		if t(42.5) {spawn_missile_small_fixed(1, 0, 0.7)}
		if t(43) {spawn_missile_small_fixed(1, 0, 0.6) spawn_missile_regular_left(0)}
		if t(43.5) {spawn_missile_small_fixed(1, 0, 0.5) spawn_missile_regular_bottom(0)}
		if t(44) {spawn_missile_small_fixed(1, 0, 0.4) spawn_missile_exploding_right(2)}
		
		if t(47) {spawn_missile_small_fixed(1, 0.2, 0) spawn_missile_regular_left(0)}
		if t(47.5) {spawn_missile_small_fixed(1, 0.3, 0) spawn_missile_regular_right(0)}
		if t(48) {spawn_missile_small_fixed(1, 0.4, 0) spawn_missile_regular_top(0)}
		if t(48.5) {spawn_missile_small_fixed(1, 0.5, 0) spawn_missile_regular_bottom(0)}
		if t(49) {spawn_missile_small_fixed(1, 0.6, 0) spawn_missile_regular_left(0)}
		
		if t(50) {spawn_missile_small_fixed(1, 0.8, 1) spawn_missile_regular_left(0) spawn_powerup(powerupType.life, 0.2, 0.7)}
		if t(50.5) {spawn_missile_small_fixed(1, 0.7, 1) spawn_missile_regular_right(0)}
		if t(51) {spawn_missile_small_fixed(1, 0.6, 1) spawn_missile_regular_top(0)}
		if t(51.5) {spawn_missile_small_fixed(1, 0.5, 1) spawn_missile_regular_bottom(0)}
		if t(52) {spawn_missile_small_fixed(1, 0.4, 1) spawn_missile_regular_left(0)}
		
		if t(53) {spawn_missile_regular_top(0)}
		if t(53.5) {spawn_missile_regular_left(0)}
		if t(54) {spawn_missile_speedy_fixed(1, 0, 0.3)}
		
		if t(55) {spawn_missile_regular_bottom(0)}
		if t(55.5) {spawn_missile_regular_right(0)}
		if t(56) {spawn_missile_speedy_fixed(1, 0, 0.7)}
		
		if t(59) {spawn_missile_exploding_left(1) spawn_missile_regular_top(0)}
		if t(60) {spawn_missile_exploding_right(1) spawn_missile_regular_bottom(0)}
		if t(61) {spawn_missile_exploding_left(1) spawn_missile_regular_top(0)}
		if t(62) {spawn_missile_exploding_right(1) spawn_missile_regular_bottom(0)}
		
		if t(63) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_regular_fixed(0, 1, 0.4, true)}
		if t(63.5) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(1, 1, 0.4, true)}
		if t(64) {spawn_missile_regular_fixed(2, 0, 0.4, true) spawn_missile_regular_fixed(2, 1, 0.4, true)}
		
		if t(65) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_regular_fixed(0, 1, 0.4, true)}
		if t(65.5) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(1, 1, 0.4, true)}
		if t(66) {spawn_missile_regular_fixed(2, 0, 0.4, true) spawn_missile_regular_fixed(2, 1, 0.4, true)}
		
		if t(68) {spawn_missile_exploding_left(1) spawn_missile_regular_top(0) spawn_coin(0.2, 0.4) spawn_powerup(powerupType.shield, 0.3, 0.3)}
		if t(69) {spawn_missile_exploding_right(1) spawn_missile_regular_bottom(0) spawn_coin(0.8, 0.4)}
		if t(70) {spawn_missile_exploding_left(1) spawn_missile_regular_top(0) spawn_coin(0.2, 0.6)}
		if t(71) {spawn_missile_exploding_right(1) spawn_missile_regular_bottom(0) spawn_coin(0.8, 0.6)}
		
		if t(72) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_regular_fixed(0, 1, 0.4, true)}
		if t(72.5) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(1, 1, 0.4, true)}
		if t(73) {spawn_missile_regular_fixed(2, 0, 0.4, true) spawn_missile_regular_fixed(2, 1, 0.4, true)}
		
		if t(74) {spawn_missile_regular_fixed(0, 0, 0.4, true) spawn_missile_regular_fixed(0, 1, 0.4, true)}
		if t(74.5) {spawn_missile_regular_fixed(1, 0, 0.4, true) spawn_missile_regular_fixed(1, 1, 0.4, true)}
		if t(75) {spawn_missile_regular_fixed(2, 0, 0.4, true) spawn_missile_regular_fixed(2, 1, 0.4, true)}
		
		if t(79) {spawn_missile_homing(0, 0, 0.4)}
		if t(80) {spawn_missile_regular_left(0)}
		if t(81) {spawn_missile_regular_top(1)}
		if t(82) {spawn_missile_regular_right(2)}
		
		if t(83) {spawn_missile_homing(1, 1, 0.4)}
		if t(84) {spawn_missile_regular_right(0)}
		if t(85) {spawn_missile_regular_top(1)}
		if t(86) {spawn_missile_regular_left(2)}
		
		if t(88) {spawn_missile_homing(1, 0, 0.6) spawn_powerup(powerupType.regen, 0.7, 0.3)}
		if t(89) {spawn_missile_homing(1, 0, 0.6)}
		if t(90) {spawn_missile_small_left(1)} if t(90.2) {spawn_missile_small_left(1)} if t(90.4) {spawn_missile_small_left(1)}
		if t(91) {spawn_missile_small_right(1)} if t(91.2) {spawn_missile_small_right(1)} if t(91.4) {spawn_missile_small_right(1)}
		
		if t(92) {spawn_missile_homing(1, 1, 0.6)}
		if t(93) {spawn_missile_homing(1, 1, 0.6)}
		if t(94) {spawn_missile_small_left(1)} if t(94.2) {spawn_missile_small_left(1)} if t(94.4) {spawn_missile_small_left(1)}
		if t(95) {spawn_missile_small_right(1)} if t(95.2) {spawn_missile_small_right(1)} if t(95.4) {spawn_missile_small_right(1)}
		
		if t(97) {spawn_missile_speedy_fixed(1, 0, 0.4) spawn_missile_speedy_fixed(1, 1, 0.4)}
		if t(98) {spawn_coin(0.25, 0.25) spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_left(2)}
		if t(99) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_right(2)}
		if t(100) {spawn_coin(0.75, 0.75) spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		
		if t(101) {spawn_powerup(powerupType.shield, 0.75, 0.75) spawn_missile_speedy_fixed(1, 0, 0.4) spawn_missile_speedy_fixed(1, 1, 0.4)}
		if t(102) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_left(2)}
		if t(103) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_right(2)}
		if t(104) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
		
		if t(105) {spawn_missile_speedy_fixed(2, 0, 0.4) spawn_missile_speedy_fixed(2, 1, 0.4)}
		if t(106) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
				   spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_left(2)}
		if t(107) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) 
			       spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_right(2)}
		if t(108) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) 
			       spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
			
		if t(109) {spawn_missile_speedy_fixed(2, 0, 0.4) spawn_missile_speedy_fixed(2, 1, 0.4)}
		if t(110) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			       spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_left(2)}
		if t(111) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) 
			       spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_right(2)}
		if t(112) {spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75)) 
			       spawn_missile_small_fixed(1, 0, random_range(0.25, 0.75)) spawn_missile_small_fixed(1, 1, random_range(0.25, 0.75))
			spawn_missile_regular_top(1) spawn_missile_regular_bottom(1)}
			
		if t(113) {spawn_missile_regular_left(0) spawn_missile_regular_top(0)}
		if t(114) {spawn_missile_regular_right(0) spawn_missile_regular_bottom(0)}
		if t(115) {spawn_missile_exploding_left(1)}
		if t(116) {spawn_missile_exploding_right(1)}
		
		if t(119) {award_all_missiles()}
		if t(120) {obj_game_manager.game_state = gameState.victory;
			update_and_save_highscore(true)}
		
		
	}
	break;
}

time_p = time;
