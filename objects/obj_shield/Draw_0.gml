draw_self();

var _alpha = map_value(shield_health, 0, 100, 0, 1);

image_alpha = clamp(_alpha, 0, 1);

if (taking_damage) {
	image_blend = c_red;
	taking_damage = false;
} else {
	image_blend = c_white;
}