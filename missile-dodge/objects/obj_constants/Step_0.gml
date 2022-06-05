timer -= global.delta;
if (timer <= 0) {
	timer = (1/16);
	var tmp = global.c1;
	global.c1 = global.c2;
	global.c2 = global.c3;
	global.c3 = global.c4;
	global.c4 = tmp;
}