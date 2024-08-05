/// @desc ArcTower struct
/// @param {struct} _projectile_factory A projectile factory for towers
function ArcTower() : Shooter() constructor {
	initialized = false;
	type = ACTOR_TYPE.TOWER_ARC;
	target_range = 300;
	projectile_type = PROJECTILE_TYPE.ARC;
	projectile_speed = 0.75;
	projectile_scale = 1;
	projectile_obj = obj_arc_projectile;
}