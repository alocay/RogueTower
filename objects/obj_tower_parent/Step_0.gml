if (!initialized) {
	with (obj_core) {
		other.attacks_per_sec = attributes.attacks_per_sec;
		other.projectile_damage = attributes.projectile_damage;
	}
	
	initialized = true;
}

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

var _nearest_enemy_in_view = noone;
var _closest_distance = noone;

if (!instance_exists(target)) {
	with(obj_enemy) {
		if (rectangle_in_rectangle(
			bbox_left, 
			bbox_top, 
			bbox_right, 
			bbox_bottom, 
			view_xview[0], 
			view_yview[0], 
			view_xview[0] + view_wview[0], 
			view_yview[0] + view_hview[0])) {
				var _distance = point_distance(other.x, other.y, x, y);
				if (_distance <= other.target_range 
					&& (_nearest_enemy_in_view == noone || _distance < _closest_distance)) {
						_nearest_enemy_in_view = self;
						_closest_distance = _distance;
				}
		}
	}

	target = _nearest_enemy_in_view;
}

if (target) {
	target.image_blend = c_red;
}
	
// Lerps the gun angle to the new directionat the rotation speed
var _prev_angle = gun_angle;
gun_angle = move_gun(x, y, target, gun_angle, rotation_speed)
var _angle_delta = abs(_prev_angle - gun_angle);
is_targetting = _angle_delta > targetting_delta_threshold;

var _attack_window = 1 / attacks_per_sec;

if (attack_cooldown >= _attack_window) {
	if (target && !is_targetting) {
		shoot_tower();
		attack_cooldown = 0;
	}
} else {
	attack_cooldown += delta_time / 1000000;
}
