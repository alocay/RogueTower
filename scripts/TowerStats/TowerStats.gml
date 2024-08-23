function TowerStats() constructor {
	damage = 0;
	attacks_per_sec = 1;
	rotation_speed = 0;
	accuracy = 0;
	range = 0;
	projectile_speed = 0;
	projectile_scale = 1;
	max_arc_distance = 100;
	max_arcs = 1;
	max_pierces = 0;
	
	increase_flat = function(_name, _amount) {
		var _hash = variable_get_hash(_name);
		var _value = struct_get_from_hash(self, _hash);
		struct_set_from_hash(self, _hash, _value + _amount);
	}
	
	increase_pct = function(_name, _pct) {
		var _pct_amount = _value * _pct;
		increase_flat(_name, _pct_amount);
	}
	
	increase_damage = function(_dmg) {
		increase_flat("damage", _dmg);
	}
	
	increase_damage_pct = function(_dmg_pct) {
		damage += damage * _dmg_pct;
	}
	
	increase_attacks_per_sec = function(_aps) {
		increase_flat("attacks_per_sec", _aps);
	}
	
	increase_attacks_per_sec_pct = function(_pct) {
		increase_pct("attacks_per_sec", _pct);
	}
	
	increase_rotation_speed = function(_rs) {
		rotation_speed += _rs;
	}
	
	increase_rotation_speed_pct = function(_rs_pct) {
		rotation_speed += rotation_speed * _rs_pct;
	}
	
	increase_accuracy = function(_acc) {
		accuracy += _acc;
	}
	
	increase_accuracy_pct = function(_acc_pct) {
		accuracy += accuracy * _acc_pct;
	}
	
	increase_range = function(_range) {
		range += _range;
	}
	
	increase_range_pct = function(_range_pct) {
		range += range * _range_pct;
	}
	
	increase_max_arc_distance = function(_amount) {
		increase_flat("max_arc_distance", _amount);
	}
	
	increase_max_arc_distance_pct = function(_pct) {
		increase_pct("max_arc_distance", _pct);
	}
	
	increase_max_arcs = function(_amount) {
		increase_flat("max_arcs", _amount);
	}
	
	increase_max_arcs_pct = function(_pct) {
		increase_pct("max_arcs", _pct);
	}
	
	increase_max_pierces = function(_amount) {
		increase_flat("max_pierces", _amount);
	}
	
	increase_max_pierces_pct = function(_pct) {
		increase_pct("max_pierces", _pct);
	}
	
	increase_projectile_speed = function(_amount) {
		increase_flat("projectile_speed", _amount);
	}
	
	increase_projectile_speed_pct = function(_pct) {
		increase_pct("projectile_speed", _pct);
	}
	
	increase_projectile_scale = function(_amount) {
		increase_flat("projectile_scale", _amount);
	}
	
	increase_projectile_scale_pct = function(_pct) {
		increase_pct("projectile_scale", _pct);
	}
}