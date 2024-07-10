/// @description Reward card initialization

// Variable for target scale
target_scale = 1.0;

// Variables for scaling rate
scale_rate = 0.1;
can_scale_at_rate = false;

// Variable for pressed state
is_pressed = false;

title = noone;
description = noone;
type = noone;

set_options = function(_title, _description, _type) {
	title = _title;
	description = _description;
	type = _type;
}