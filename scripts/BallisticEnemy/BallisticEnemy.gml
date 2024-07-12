function BallisticEnemy() : Shooter() constructor {
	target_range = 400;

	speed = 1;
	max_speed = 1;
	last_speed = speed;
	
	current_health = 15;
	exp_value = 10;
	bounce_back_offset = 0;
	acceleration = 0.05;
	strength = 1;

	shoot_enemy = function() {
		// TODO: implement
	}
}