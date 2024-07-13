function TargetingActor() constructor {
	current_health = 10;
	melee_damage = 1;
	can_shoot = false;
	can_move_while_targeting = false;
	attacks_per_sec = 0.5;
	attack_cooldown = 0;
	origin_offset = 16;
	spawn_chance = 0;
	
	speed = 1;
	max_speed = 1;
	pushed_speed = 0;
	last_speed = speed;
	
	bounce_back_offset = 0;
	target_range = 0;
	target = noone;
	is_targetting = false;
	targetting_delta_threshold = 0.5;
	strength = 1;
	acceleration = 0.05;
	
	exp_value = 10;
	type = noone;
}