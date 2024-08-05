
var _mins = floor(time_passed_secs / 60);
var _seconds = time_passed_secs % 60;
var _mins_label = _mins < 10 ? "0" + string(_mins) : string(_mins);
var _seconds_label = _seconds < 10 ? "0" + string(_seconds) : string(_seconds);

draw_set_colour(c_white);
draw_text((room_width / 2) - 50, 10, _mins_label + ":" + _seconds_label);
