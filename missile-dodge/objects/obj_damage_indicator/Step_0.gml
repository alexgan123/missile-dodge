if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/36);	
	}
	else {
		instance_destroy();	
	}
}
y-=0.7;
