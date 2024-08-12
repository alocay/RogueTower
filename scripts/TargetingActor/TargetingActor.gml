function TargetingActor() constructor {
	current_health = 10;
	melee_damage = 1;
	can_shoot = false;
	can_move_while_targeting = false;
	attacks_per_sec = 0.5;
	attack_cooldown = 0;
	origin_offset = 16;
	spawn_chance = 0;
	
	speed = 1;
	max_speed = 1;
	pushed_speed = 0;
	last_speed = speed;
	
	bounce_back_offset = 0;
	target_range = 0;
	target = noone;
	is_targetting = false;
	targetting_delta_threshold = 0.5;
	strength = 1;
	acceleration = 0.05;
	
	exp_value = 10;
	type = noone;
	
	/// @desc Default target acquisition function
	/// @returns {Id.Instance} The acquired target instance or noone if no valid target exists
	acquire_target = function() {
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
		
		return target;
	}
}