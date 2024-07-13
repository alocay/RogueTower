

var _sat = map_value(core_health, 0, max_core_health, 0, 255);

var _color = make_color_rgb(255, _sat, _sat);

image_blend = _color;

draw_self();

image_blend = c_white;
