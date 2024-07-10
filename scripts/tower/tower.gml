/// Increases the fire rate of all towers
/// @param {real} _pct The percentage fire rate increase
function increase_fire_rates(_pct) {
	with(obj_tower) {
		increase_fire_rate_pct(_pct);
	}
}

/// Increases the projectile damage of all towers
/// @param {real} _pct The percentage damage increase
function increase_damag2e(_pct) {
	with(obj_tower) {
		increase_projectile_damage_pct(_pct);
	}
}

function add_tower(_x, _y) {
	// TODO: add tower
}