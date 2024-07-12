function Shooter() : TargetingActor() constructor {
	gun_angle = 0;
	gun_offset_x = 0;
	gun_offset_y = 0;
	rotation_speed = 0.25;

	projectile_speed = 1.0;
	projectile_damage = 5;
	
	/// @desc Shoots a projectile when cooldown is ready
	/// @param {struct} _projectile_factory The projectile factory
	shoot = function(_projectile_factory) {
		create_projectile(gun_angle, _projectile_factory, self, gun_offset_x, gun_offset_y);
	}
}