function ArtilleryEnemy() : Shooter() constructor {
	target_range = 500;
	type = ACTOR_TYPE.CREATURE_ARTILLERY;
	projectile_type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 2;
	projectile_damage = 5;
	projectile_scale = 4;
	projectile_obj = obj_ballistic_projectile;

	attacks_per_sec = 0.25;
	speed = 1;
	max_speed = 0.5;
	pushed_speed = 0;
	last_speed = speed;
	
	exp_value = 15;
	strength = 0.5;
}