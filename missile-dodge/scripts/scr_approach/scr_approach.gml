/// @param current
/// @param target
/// @param speed[0-1]
function smooth_approach(argument0, argument1, argument2) {
	var diff = argument1-argument0;
	if abs(diff) < 0.0005 {
	   return argument1;
	}
	else {
	   return argument0+sign(diff)*abs(diff)*argument2;
	}
}

/// @description angle_approach(current, target, turn_speed)
/// @param current
/// @param  target
/// @param  turn_speed
function angle_approach(argument0, argument1, argument2) {
	/*
	 * Example use (rotate to face towards the cursor):
	 * var target_angle = point_direction(x, y, mouse_x, mouse_y);
	 * image_angle = angle_approach(image_angle, target_angle, 4);
	 */
	var tempdir;
	var angle = argument0;
	var target_angle = argument1;
	var turn_speed = argument2;
	var diff = abs(target_angle-angle);
	if (diff > 180) {
	    if (target_angle > 180) {
	        tempdir = target_angle - 360;
	        if (abs(tempdir-angle ) > turn_speed) {
	            angle -= turn_speed;
	        }
	        else {
	            angle = target_angle;
	        }
	    }
	    else {
	        tempdir = target_angle + 360;
	        if (abs(tempdir-angle) > turn_speed) {
	            angle += turn_speed;
	        }
	        else {
	            angle = target_angle;
	        }
	    }
	}
	else {
	    if (diff > turn_speed) {
	        if (target_angle > angle) {
	            angle += turn_speed;
	        }
	        else {
	            angle -= turn_speed;
	        }
	    }
	    else {
	        angle = target_angle;
	    }
	}
	return angle;
}


