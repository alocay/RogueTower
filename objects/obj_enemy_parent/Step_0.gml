return;

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

target = instance_nearest(x, y, obj_core)

var _direction = point_direction(x, y, target.x, target.y);
var _direction_radians = degtorad(_direction);

var _move_unit = true;

if (bounce_back_offset > 0) {
	_direction_radians *= bounce_back_offset;
}

// Checks if the enemy is out of health
if (current_health <= 0)
{	
	// Destroys itself
	instance_destroy();
	
	with(obj_core) {
		gain_exp(other.exp_value);
	}
}

var _colliding_projectile = instance_place(x, y, obj_ballistic_projectile);
if (_colliding_projectile && !object_is_ancestor(_colliding_projectile.owner.object_index, obj_enemy_parent)) {
	current_health -= _colliding_projectile.damage;
	instance_destroy(_colliding_projectile);
}

var _colliding_shield = instance_place(x, y, obj_shield);

var _opposite_direction_factor = ((_direction + 180) % 360) / _direction;
var _opposite_direction_radians = degtorad(_direction * _opposite_direction_factor);
var _opposite_edge_x = x + (origin_offset * cos(_opposite_direction_radians));
var _opposite_edge_y = y - (origin_offset * sin(_opposite_direction_radians));

if (_colliding_shield && _colliding_shield.shield_health > 0) {
	var _distance_to_shield_center = point_distance(_opposite_edge_x, _opposite_edge_y, _colliding_shield.x, _colliding_shield.y);
	if (_distance_to_shield_center > (_colliding_shield.shield_radius - _colliding_shield.shield_ring_width)) {
		bounce_back_offset = _opposite_direction_factor;
		_colliding_shield.take_damage(melee_damage);
		pushed_speed = _colliding_shield.repulsion_strength / strength;
		speed = pushed_speed;
	}
} else if (bounce_back_offset > 0) {
	speed = clamp(speed - (acceleration * strength), 0, pushed_speed);
	
	if (speed < 0.05) {
		bounce_back_offset = 0;
	}
	
	last_speed = speed;
}

if (place_meeting(x, y, obj_core)) {
	target.take_damage(melee_damage);
	speed = 0;
} else if (speed < max_speed && bounce_back_offset == 0) {
	var _new_speed = speed + acceleration;
	speed = clamp(_new_speed, 0, max_speed);
}

if (can_shoot) {
	var _prev_angle = gun_angle;
	gun_angle = move_gun(x, y, target, gun_angle, rotation_speed)
	var _angle_delta = abs(_prev_angle - gun_angle);
	is_targetting = _angle_delta > targetting_delta_threshold;
	var _distance_to_target = point_distance(x, y, target.x, target.y);
	
	if (_distance_to_target <= target_range) {
		if (!can_move_while_targeting) {
			_move_unit = false;
		}
		
		var _attack_window = 1 / attacks_per_sec;
		if (attack_cooldown >= _attack_window) {
			if (target && !is_targetting) {
				shoot();
				attack_cooldown = 0;
			}
		} else {
			attack_cooldown += delta_time / 1000000;
		}
	}
}

if (_move_unit) {
	x += speed * cos(_direction_radians);
	y -= speed * sin(_direction_radians);
}