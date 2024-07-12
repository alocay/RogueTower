/// @description Initialize shield

max_shield_health = 100;
shield_health = 0;
repulsion_strength = 10;
recharge_rate_per_sec = 10;
recharge_cooldown = 0;
in_full_recharge = true;
current_charge = 0;
recharge_test = 0;
recharge_test_ms = 0;

take_damage = function(_damage) {
	var _new_shield_hp = shield_health - _damage;
	shield_health = clamp(_new_shield_hp, 0, max_shield_health);
	
	if (shield_health <= 0) {
		in_full_recharge = true;
	}
}