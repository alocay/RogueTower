/// @desc The Projectile struct
/// @param {asset.GMObject} _owner The projectiles owner
function Arc(_owner, _arc_count) : Projectile(_owner) constructor {
	max_arc_distance = 100;
	max_arcs = 1;
	max_lifetime = 5;
	arc_count = _arc_count;
	time_alive_sec = 0;
	enemies_hit = [];
	
	get_max_pierces = function() {
		return global.stats.base_tower.max_pierces + global.stats.arc_tower.max_pierces;
	}
	
	damage = function() {
		return global.stats.base_tower.damage + global.stats.arc_tower.damage;
	}
	
	fire = function(_direction)
	{
		direction = _direction;
		speed = global.stats.base_tower.projectile_speed + global.stats.arc_tower.projectile_speed;
		last_speed = speed;
		image_angle = direction;
		image_xscale = global.stats.base_tower.projectile_scale 
			+ global.stats.arc_tower.projectile_scale;
		image_yscale = global.stats.base_tower.projectile_scale 
			+ global.stats.arc_tower.projectile_scale;
		damage = global.stats.base_tower.damage + global.stats.arc_tower.damage;
	
		var _new_spark = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		// _new_spark.set_spark();
		// _new_spark.owner = self;
	}
}