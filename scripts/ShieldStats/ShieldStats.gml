function ShieldStats() constructor {
	max_shield_health = 500;
	shield_health = max_shield_health;
	shield_radius = 160;
	shield_ring_width = 20;
	repulsion_strength = 3;
	recharge_rate_per_sec = 1;
	recharge_amount = 1;
	recharge_division = 1;
	recharge_cooldown = 0;
	
	increase_max_shield_health = function(_amount) {
		max_shield_health += _amount;
	}

	increase_max_shield_health_pct = function(_pct) {
		max_shield_health += max_shield_health * _pct;
	}
	
	increase_shield_radius = function(_amount) {
		shield_radius += _amount;
	}

	increase_shield_radius_pct = function(_pct) {
		shield_radius += shield_radius * _pct;
	}

	increase_repulsion_strength = function(_amount) {
		repulsion_strength += _amount;
	}

	increase_repulsion_strength_pct = function(_pct) {
		repulsion_strength += repulsion_strength * _pct;
	}

	increase_repulsion_strength = function(_amount) {
		repulsion_strength += _amount;
	}

	increase_repulsion_strength_pct = function(_pct) {
		repulsion_strength += repulsion_strength * _pct;
	}

	increase_recharge_amount = function(_amount) {
		recharge_amount += _amount;
	}

	increase_recharge_amount_pct = function(_pct) {
		recharge_amount += recharge_amount * _pct;
	}

	increase_recharge_rate_per_sec = function(_amount) {
		recharge_rate_per_sec += _amount;
	}

	increase_recharge_rate_per_sec_pct = function(_pct) {
		recharge_rate_per_sec += recharge_rate_per_sec * _pct;
	}
}