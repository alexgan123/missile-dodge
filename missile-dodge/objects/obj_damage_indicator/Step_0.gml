if (alarm0 > 0) alarm0 -= global.delta;
else can_lose_alpha = true;

if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= 4*global.delta;	
	}
	else {
		instance_destroy();	
	}
}
y-=100*global.delta;
