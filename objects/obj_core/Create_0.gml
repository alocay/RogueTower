/// @description Initialize player

level = 0;
experience = 0;
health = 100;
attributes = {
	fire_rate: 3.0,
	projectile_damage: 50.0
};

level_up = function (_left_over_exp) {
	experience = _left_over_exp;
	level++;
}

gain_exp = function(_amount) {
	experience += _amount;
}

increase_fire_rate_pct = function(_pct) {
	attributes.fire_rate -= attributes.fire_rate * _pct;
	
	with(obj_tower_parent) {
		fire_rate = other.attributes.fire_rate;
	}
}

increase_fire_rate_flat = function(_amount) {
	attributes.fire_rate -= _amount;
	
	with(obj_tower_parent) {
		fire_rate = other.attributes.fire_rate;
	}
}

increase_projectile_damage_pct = function(_pct) {
	attributes.projectile_damage += attributes.projectile_damage * _pct;
	
	with(obj_tower_parent) {
		projectile_damage = other.attributes.projectile_damage;
	}
}