/// @description Handles target aquisition, gun movement, and firing logic

var is_target_valid = function(_potential_target) {
	return _potential_target != noone
		&& _potential_target != id
		&& point_distance(x, y, _potential_target.x, _potential_target.y) <= target_range;
}

set_target = function() {
	var _potential_target = instance_nearest(x, y, obj_enemy);
	target = is_valid_target(_potential_target) ? _potential_target : noone;
}


move_gun_to_target = function() 
{
	var _new_dir = point_direction(x, y, target.x, target.y);
	
	// Works out the change in direction
	var _delta_dir = abs(new_dir - gun_angle);

	// Checks out if the change in direction is more than 180
	if (_delta_dir >= 180)
	{
		// Checks if the gun angle is greater than a half rotation
		if (gun_angle > 180)
		{
			// Reduces the gun angle by 1 rotation
			gun_angle -= 360;
		}
		else
		{
			// Increased the gun angle by 1 rotation
			gun_angle += 360;
		}
	}
	
	// Lerps the gun angle to the new directionat the rotation speed
	gun_angle = lerp(gun_angle, new_dir, rotation_speed);
}

shoot_target = function() {
	if (tower_fire_cooldown > 0) {
		// reduces the fireing cooldown
		tower_fire_cooldown -= delta_time * 0.000001;	
	}

	if (target) {
		shoot_tower();
	}
}

set_target();

move_gun_to_target();

shoot_target();
