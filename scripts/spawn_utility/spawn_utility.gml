function generate_new_location(_a, _b, _inner_radius) {
	var _a_radius = _a / 2;
	var _inner_radius_ratio = _inner_radius / _a_radius;
	var _theta = random_range(0, 2 * pi);
	show_debug_message(_theta);
	
	var _bcos = power(_b * cos(_theta), 2);
	var _asin = power(_a * sin(_theta), 2);
	
	var _max_radius = (_a * _b) / (sqrt(_bcos + _asin));
	var _random_radius = _max_radius * sqrt(random_range(_inner_radius_ratio, 1));
	
	var _x = _random_radius * cos(_theta);
	var _y = _random_radius * sin(_theta);
	
	return [_x, _y];
}