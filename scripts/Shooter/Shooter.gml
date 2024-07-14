function Shooter() : TargetingActor() constructor {
	can_shoot = true;
	can_move_while_targeting = false;
	gun_angle = 0;
	gun_offset_x = 0;
	gun_offset_y = 0;
	rotation_speed = 0.25;
	
	projectile_factory = new ProjectileFactory();
	projectile_type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 1.0;
	projectile_damage = 0;
	projectile_scale = 1;
	projectile_obj = noone;
	
	/// @desc Shoots a projectile when cooldown is ready
	/// @param {struct} _projectile_factory The projectile factory
	shoot = function() {
		create_projectile(gun_angle, projectile_factory, self, gun_offset_x, gun_offset_y);
	}
}