draw_self();

var _alpha = map_value(shield_health, 0, 100, 0, 1);

image_alpha = clamp(_alpha, 0, 1);