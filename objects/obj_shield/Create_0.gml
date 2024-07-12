/// @description Initialize shield

max_shield_health = 100;
shield_health = max_shield_health;
shield_radius = 320;
shield_ring_width = 20;
repulsion_strength = 10;
recharge_rate_per_sec = 10;
recharge_division = 1;
recharge_cooldown = 0;
in_full_recharge = false;
current_charge = 0;

take_damage = function(_damage) {
	var _new_shield_hp = shield_health - _damage;
	shield_health = clamp(_new_shield_hp, 0, max_shield_health);
	
	if (shield_health <= 0) {
		in_full_recharge = true;
	}
}