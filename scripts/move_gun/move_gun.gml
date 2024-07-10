/// @function move_gun(_x, _y, _target, _gun_angle, _rotation_speed);
/// @param {real} _x The instance's x position
/// @param {real} _y The instance's y position
/// @param {id} _target The target to aim at
/// @param {real}  _gun_angle The current gun's angle
/// @param {real}  _rotation_speed The rotation speed
/// @return {real} the new gun angle

function move_gun(_x, _y, _target, _gun_angle, _rotation_speed) {
	
	if (!_target) {
		return _gun_angle;
	}
	
	var _new_dir = point_direction(_x, _y, _target.x, _target.y);
	
	// Works out the change in direction
	var _delta_dir = abs(_new_dir - _gun_angle);

	// Checks out if the change in direction is more than 180
	if (_delta_dir >= 180)
	{
		// Checks if the gun angle is greater than a half rotation
		if (_gun_angle > 180)
		{
			// Reduces the gun angle by 1 rotation
			_gun_angle -= 360;
		}
		else
		{
			// Increased the gun angle by 1 rotation
			_gun_angle += 360;
		}
	}
	
	// Lerps the gun angle to the new directionat the rotation speed
	return lerp(_gun_angle, _new_dir, _rotation_speed);
}