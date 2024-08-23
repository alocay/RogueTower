function ExpStats() constructor {
	current_exp = 0;
	level = 1;
	exp_for_next_level = 10;
	multiplier = 0;
	
	increase_multiplier = function(_amount) {
		multiplier += _amount;
	}
	
	increase_multiplier_pct = function(_pct) {
		multiplier += multiplier * _pct;
	}
	
	get_exp_for_next_level = function() {
		exp_for_next_level = round(power(exp_for_next_level, 1))
	}
}