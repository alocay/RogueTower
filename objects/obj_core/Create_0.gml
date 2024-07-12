/// @description Initialize player

level = 0;
experience = 0;
core_health = 100;
attributes = {
	attacks_per_sec: 0.5,
	projectile_damage: 10.0
};

level_up = function (_left_over_exp) {
	experience = _left_over_exp;
	level++;
}

gain_exp = function(_amount) {
	experience += _amount;
}

increase_fire_rate_pct = function(_pct) {
	attributes.attacks_per_sec += attributes.attacks_per_sec * _pct;
	
	with(obj_tower_parent) {
		attacks_per_sec = other.attributes.attacks_per_sec;
	}
}

increase_fire_rate_flat = function(_amount) {
	attributes.attacks_per_sec += _amount;
	
	with(obj_tower_parent) {
		attacks_per_sec = other.attributes.attacks_per_sec;
	}
}

increase_projectile_damage_pct = function(_pct) {
	attributes.projectile_damage += attributes.projectile_damage * _pct;
	
	with(obj_tower_parent) {
		projectile_damage = other.attributes.projectile_damage;
	}
}