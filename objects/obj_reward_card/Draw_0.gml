/// @description Draw card

if (reward == noone) {
	return;
}

draw_self();

if (reward.text != noone) {
	draw_set_colour(c_white);
	
	if (string_length(reward.text) < max_text_line_length) {
		draw_text(x + 25, y + 20, reward.text);
	} else {
		var _split_labels = string_split(reward.text, " ", true);
		var _line = "";
		var _line_number = 1;
		for (var _i = 0; _i < array_length(_split_labels); _i++) {
			var _y_offset = y + (20 * _line_number);
			if (string_length(_line) > 0 and string_length(_line) + string_length(_split_labels[_i]) > max_text_line_length) {
				draw_text(x + 25, _y_offset, _line);
				_line = _split_labels[_i] + " ";
				_line_number++;
			} else {
				_line += _split_labels[_i] + " ";
			}
		}
		
		if (string_length(_line) > 0) {
			draw_text(x + 25, y + (20 * _line_number), _line);
		}
	}
}