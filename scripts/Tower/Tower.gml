/// @desc Tower struct
/// @param {struct} _projectile_factory A projectile factory for towers
function Tower() : Shooter() constructor {
	initialized = false;
	type = ACTOR_TYPE.TOWER_BALLISTIC;
	target_range = 700;
	projectile_type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 5;
	projectile_scale = 1;
	projectile_obj = obj_tower_projectile;
}