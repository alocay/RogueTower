/// @desc The Projectile struct
/// @param {asset.GMObject} _owner The projectiles owner
function Arc(_owner) constructor {
	owner = _owner;
	speed = 0;
	last_speed = speed;
	damage = 0;
	projectile_obj = _owner.projectile_obj;
	max_arc_distance = 100;
	max_arcs = 1;
	max_lifetime = 5;
	arc_count = 0;
	time_alive_sec = 0;
	enemies_hit = [];

	// Function called when the projectile is fired from a player
	fire = function()
	{
		direction = owner.gun_angle;
		speed = owner.projectile_speed;
		last_speed = speed;
		damage = owner.projectile_damage;
		image_angle = direction;
		image_xscale = owner.projectile_scale;
		image_yscale = owner.projectile_scale;
	
		var _new_spark = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		// _new_spark.set_spark();
		// _new_spark.owner = self;
	}
}