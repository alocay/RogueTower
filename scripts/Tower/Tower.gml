/// @desc Base Tower class
/// @param {Id.Instance} _obj The object instance
function Tower(_obj) constructor {
	tower_obj = _obj;
	can_shoot = true;
	can_move_while_targeting = false;
	gun_angle = 0;
	gun_offset_x = 0;
	gun_offset_y = 0;
	rotation_speed = 0.25;
	
	current_health = 10;
	attacks_per_sec = 0.5;
	// attack_cooldown = 0;
	origin_offset = 16;
	
	speed = 0;
	max_speed = 0;
	last_speed = speed;
	
	target_range = 0;
	target = noone;
	is_targetting = false;
	targetting_delta_threshold = 0.5;
	
	type = ACTOR_TYPE.NONE;
	
	/// @desc Default target acquisition function
	/// @returns {Id.Instance} The acquired target instance or noone if no valid target exists
	acquire_target = function() {
		if (type == ACTOR_TYPE.NONE) {
			throw("Tower type is no set");
		}
		
		var _tower_stats = global.stats.get_tower_stats(type);
		var _base_stats = global.stats.base_tower;
		var _range = _tower_stats.range + _base_stats.range;
		var _rotation_speed = _tower_stats.rotation_speed + _base_stats.rotation_speed;
		var _nearest_enemy_in_view = noone;
		var _closest_distance = 100000000;

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
						var _distance = point_distance(other.tower_obj.x, other.tower_obj.y, x, y);
						if (_distance <= _range
							&& (_nearest_enemy_in_view == noone || _distance < _closest_distance)) {
								_nearest_enemy_in_view = self;
								_closest_distance = _distance;
						}
				}
			}

			target = _nearest_enemy_in_view;
		}
		
		return target;
	}
	
	/// @desc Moves the gun to the current target
	adjust_gun = function() {
		var _tower_stats = global.stats.get_tower_stats(type);
		var _base_stats = global.stats.base_tower;
		var _rotation_speed = _tower_stats.rotation_speed + _base_stats.rotation_speed;
		
		// Lerps the gun angle to the new direction at the rotation speed
		var _prev_angle = gun_angle;
		gun_angle = move_gun(tower_obj.x, tower_obj.y, target, gun_angle, _rotation_speed)
		var _angle_delta = abs(_prev_angle - gun_angle);
		is_targetting = _angle_delta > targetting_delta_threshold;
	}
	
	/// @desc Gets the attacks per sec value for the tower
	/// @returns {Real} The attacks per sec value
	get_attacks_per_sec = function() {
		if (type == ACTOR_TYPE.NONE) {
			throw("Tower type is no set");
		}
		
		var _tower_stats = global.stats.get_tower_stats(type);
		var _base_stats = global.stats.base_tower;
		return _tower_stats.attacks_per_sec + _base_stats.attacks_per_sec;
	}
}