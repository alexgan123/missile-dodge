if (alarm0 > 0) alarm0 -= global.delta;
else can_lose_alpha = true;

if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/3) * global.delta;	
	}
	else {
		instance_destroy();	
	}
}

counter += global.delta;
