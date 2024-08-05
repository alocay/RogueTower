/// @desc Creates a projectile and fires it
/// @param {real} _gun_angle The angle of the gun firing the projectile
/// @param {struct} _projectile_factory The project factory
/// @param {struct} _owner The owner struct
/// @param {real} _gun_offset_x The x-axis offset for the gun
/// @param {real} _gun_offset_y The y-axis offset for the gun
function create_projectile(_gun_angle, _projectile_factory, _owner, _gun_offset_x = 0, _gun_offset_y = 0) {
	// Offsets for players gun position
	var _projectile_origin_x = 0;
	var _projectile_origin_y = 0;
	
	// Gun angle stored in radians
	var _theta = degtorad(_gun_angle);
	
	// Calculates the adjusted positions from offsets and angle
	var _projectile_adjust_x = (_gun_offset_x * cos(_theta)) - (_gun_offset_y * sin(_theta));
	var _projectile_adjust_y = (_gun_offset_y * cos(_theta)) + (_gun_offset_x * sin(_theta));
	
	// Sets new postions from adjusted positions and players position
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = _theta > 1 ? y - _projectile_adjust_y : y + _projectile_adjust_y;

	// Creates new player projectile from the new positions
	var _projectile = _projectile_factory.get_projectile_by_type(_owner);
	
	var _new_projectile = instance_create_layer(x, y, "Projectiles",  _projectile.projectile_obj, _projectile);
	_new_projectile.fire();
}