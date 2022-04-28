if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/360);	
	}
	else {
		instance_destroy();	
	}
}

counter += 1;
