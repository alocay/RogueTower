/// @desc Tower struct
/// @param {struct} _projectile_factory A projectile factory for towers
function Tower(_projectile_factory) : Shooter() constructor {
	initialized = false;
	projectile_factory = _projectile_factory;
	type = TOWER_TYPES.BASIC_BALLISTIC;
	target_range = 700;
	
	/// @desc Shoots a projectile when cooldown is ready
	shoot_tower = function() {
		shoot(projectile_factory);
	}
}