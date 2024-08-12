/// @desc Tower struct
/// @param {Id.Instance} _obj The tower object instance
function BallisticTower(_obj) : Tower(_obj) constructor {
	tower_obj = _obj;
	initialized = false;
	type = ACTOR_TYPE.TOWER_BALLISTIC;
	target_range = 700;
	projectile_type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 5;
	projectile_scale = 1;
	projectile_obj = obj_ballistic_projectile;
	
	shoot = function() {
		var _init_struct = { owner: tower_obj };
		var _projectile_obj = create_projectile(gun_angle, projectile_obj, tower_obj, gun_offset_x, gun_offset_y, _init_struct);
		
		var _new_smoke = instance_create_depth(tower_obj.x, tower_obj.y, tower_obj.depth - 1, obj_particle_handler);
		_new_smoke.set_smoke();
		_new_smoke.owner = tower_obj;
		
		_projectile_obj.projectile.fire(gun_angle);
	}
}