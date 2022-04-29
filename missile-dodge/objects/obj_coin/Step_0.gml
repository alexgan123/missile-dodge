if (can_lose_alpha) {
	if (alpha > 0) {
		alpha -= (1/432);	
	}
	else {
		instance_destroy();	
	}
}
if (flag) {
	if (xscale < 1) {
		xscale += 0.02;
		xscale = clamp(xscale, -1, 1);
	}
	else flag = false;
}
else {
	if (xscale > -1) {
		xscale -= 0.02;
		xscale = clamp(xscale, -1, 1);
	}
	else flag = true;
}
