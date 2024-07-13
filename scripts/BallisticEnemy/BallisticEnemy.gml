function BallisticEnemy() : Shooter() constructor {
	target_range = 450;
	type = ACTOR_TYPE.CREATURE_BALLISTIC;
	projectile_type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 1.0;
	projectile_damage = 1;

	attacks_per_sec = 2;
	speed = 1;
	max_speed = 1;
	pushed_speed = 0;
	last_speed = speed;
	
	exp_value = 10;
	strength = 1;
}