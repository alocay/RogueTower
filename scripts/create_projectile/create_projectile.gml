/// @desc Creates a projectile and fires it
/// @param {real} _direction The angle of the gun firing the projectile
/// @param {asset.GMObject} _projectile_obj The projectile object
/// @param {Id.Instance} _owner The owner object
/// @param {real} _offset_x The x-axis offset for the gun
/// @param {real} _offset_y The y-axis offset for the gun
/// @param {Struct} _init_struct A struct with values to initialize the projectile
function create_projectile(_direction, _projectile_obj, _owner, _offset_x = 0, _offset_y = 0, _init_struct = {}) {
	// Offsets for players gun position
	var _projectile_origin_x = 0;
	var _projectile_origin_y = 0;
	
	// Gun angle stored in radians
	var _theta = degtorad(_direction);
	
	// Calculates the adjusted positions from offsets and angle
	var _projectile_adjust_x = (_offset_x * cos(_theta)) - (_offset_y * sin(_theta));
	var _projectile_adjust_y = (_offset_y * cos(_theta)) + (_offset_x * sin(_theta));
	
	// Sets new postions from adjusted positions and players position
	var _projectile_pos_x = _owner.x + _projectile_adjust_x;
	var _projectile_pos_y = _theta > 1 ? _owner.y - _projectile_adjust_y : _owner.y + _projectile_adjust_y;
	
	var _inst = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", _projectile_obj, _init_struct);
	with(_inst) {
		owner = _owner;
		projectile.owner = _owner;
	}
	
	return _inst;
}