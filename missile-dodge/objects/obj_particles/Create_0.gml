global.partsys = part_system_create();

part_system_depth(global.partsys, 350);
part_system_automatic_update(global.partsys, false);

// define the different particle types
global.part_powerup_life = part_type_create();
part_type_shape(global.part_powerup_life, pt_shape_ring);
part_type_colour1(global.part_powerup_life, color_green);
part_type_alpha2(global.part_powerup_life, 0.5, 0);
part_type_size(global.part_powerup_life, 0, 0, 0.1, 0);
part_type_life(global.part_powerup_life, 60, 60);

global.part_powerup_shield = part_type_create();
part_type_shape(global.part_powerup_shield, pt_shape_ring);
part_type_colour1(global.part_powerup_shield, color_blue);
part_type_alpha2(global.part_powerup_shield, 0.5, 0);
part_type_size(global.part_powerup_shield, 0, 0, 0.1, 0);
part_type_life(global.part_powerup_shield, 60, 60);

global.part_powerup_regen = part_type_create();
part_type_shape(global.part_powerup_regen, pt_shape_ring);
part_type_colour1(global.part_powerup_regen, color_red);
part_type_alpha2(global.part_powerup_regen, 0.5, 0);
part_type_size(global.part_powerup_regen, 0, 0, 0.1, 0);
part_type_life(global.part_powerup_regen, 60, 60);

global.part_coin = part_type_create();
part_type_shape(global.part_coin, pt_shape_ring);
part_type_colour1(global.part_coin, color_yellow);
part_type_alpha2(global.part_coin, 0.5, 0);
part_type_size(global.part_coin, 0, 0, 0.1, 0);
part_type_life(global.part_coin, 30, 30);



