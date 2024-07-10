/// @description Handles target aquisition, gun movement, and firing logic

if (!initialized) {
	with (obj_core) {
		other.fire_rate = attributes.fire_rate;
		other.projectile_damage = attributes.projectile_damage;
	}
	
	initialized = true;
}

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

var _potential_target = instance_nearest(x, y, obj_enemy);
	
var _is_target_valid = _potential_target != noone
	&& _potential_target != id
	&& point_distance(x, y, _potential_target.x, _potential_target.y) <= target_range;
	
target = _is_target_valid ? _potential_target : noone;

if (target) {
	target.image_blend = c_red;
}
	
// Lerps the gun angle to the new directionat the rotation speed
var _prev_angle = gun_angle;
gun_angle = move_gun(x, y, target, gun_angle, rotation_speed)
var _angle_delta = abs(_prev_angle - gun_angle);
is_targetting = _angle_delta > targetting_delta_threshold;

if (is_targetting) {
	show_debug_message(string(_angle_delta));
}

if (fire_cooldown > 0) {
	// reduces the fireing cooldown
	fire_cooldown -= delta_time / 1000000;
}

if (target && !is_targetting) {
	shoot_tower();
}
