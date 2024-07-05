// Creates direction of pointing from player position to mouse position
var _new_dir = point_direction(x, y, mouse_x, mouse_y);
// Works out the change in direction
var _delta_dir = abs(_new_dir - gun_angle)

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
gun_angle = lerp(gun_angle, _new_dir, rotation_speed);

if (tower_fire_cooldown > 0)
{
	// reduces the fireing cooldown
	tower_fire_cooldown -= delta_time * 0.000001;	
}

if (mouse_check_button(mb_left))
{
	shoot_tower();
}
