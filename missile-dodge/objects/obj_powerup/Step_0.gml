if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/432);	
	}
	else {
		instance_destroy();	
	}
}

counter += 1;
