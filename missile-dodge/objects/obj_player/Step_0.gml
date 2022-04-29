image_index = global.player_icon;

var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

h_speed = move_speed * (_right - _left);
v_speed = move_speed * (_down - _up);

x += h_speed;
y += v_speed;

// always be inside the room
x = clamp(x, (sprite_width/2), room_width - (sprite_width/2));
y = clamp(y, (sprite_height/2), room_height - (sprite_height/2));

if (obj_game_manager.immune) {
	image_alpha = 0.5;
}
else {
	image_alpha = 1;
}
