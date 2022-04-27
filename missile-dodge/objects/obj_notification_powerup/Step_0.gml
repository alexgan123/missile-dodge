if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/30);	
	}
	else {
		instance_destroy();	
	}
}
