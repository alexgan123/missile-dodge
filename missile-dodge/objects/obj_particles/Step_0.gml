// update the particle system 60 times/sec
timer -= global.delta;
if (timer <= 0) {
	timer = 1/60;
	part_system_update(global.partsys);
}
