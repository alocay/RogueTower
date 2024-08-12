function ExpStats() constructor {
	current_exp = 0;
	level = 1;
	exp_for_next_level = 10;
	multiplier = 0;
	
	get_exp_for_next_level = function() {
		exp_for_next_level = round(power(exp_for_next_level, 1))
	}
}