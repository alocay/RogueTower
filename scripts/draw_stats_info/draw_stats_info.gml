/// @desc Draws the stat info gui
/// @param {Array} _stats Array of stats to draw
/// @param {Real} _start_x The starting x position
/// @param {Real} _start_y The starting y position
function draw_stats_info(_stats, _start_x, _start_y) {
	draw_set_colour(c_white);
	
	for (var _i = 0; _i < array_length(_stats); _i++) {
		var _label = _stats[_i].label;
		var _value = global.stats.get_stat(_stats[_i].stat_type, _stats[_i].property);
		var _ui_label = string(_label) + ": " + string(_value);
		var _y = _start_y + (_i * global.ui_values.y_padding);
		
		if (struct_exists(_stats[_i], "units")) {
			_ui_label += "/" + _stats[_i].units;
		}
		
		draw_text(_start_x, _y, _ui_label);
	}
}