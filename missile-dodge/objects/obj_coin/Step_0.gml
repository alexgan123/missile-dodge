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

// rotate the coin back and forth
if (flag) {
	if (xscale < 1) {
		xscale += 2.8 * global.delta;
		xscale = clamp(xscale, -1, 1);
	}
	else flag = false;
}
else {
	if (xscale > -1) {
		xscale -= 2.8 * global.delta;
		xscale = clamp(xscale, -1, 1);
	}
	else flag = true;
}
