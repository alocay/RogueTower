function ClawEnemy() : TargetingActor() constructor {
	melee_damage = 5;
	target_range = 25;
	strength = 1;
	spawn_chance = 0.6;
	current_health = 10;
	exp_value = 10;
	type = ACTOR_TYPE.CREATURE_CLAW;
}