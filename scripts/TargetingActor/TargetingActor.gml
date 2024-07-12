function TargetingActor() constructor {
	melee_damage = 1;
	attacks_per_sec = 0.5;
	attack_cooldown = 0;
	origin_offset = 16;
	
	target_range = 0;
	target = noone;
	is_targetting = false;
	targetting_delta_threshold = 0.15;
}