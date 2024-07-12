if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

var _core_target = instance_nearest(x, y, obj_core)

var _direction = point_direction(x, y, _core_target.x, _core_target.y);

if (bounce_back_offset > 0) {
	_direction *= bounce_back_offset;
}

x += speed * cos(_direction * (pi / 180));
y -= speed * sin(_direction * (pi / 180));

// Checks if the enemy is out of health
if (current_health <= 0)
{	
	// Destroys itself
	instance_destroy();
	
	with(obj_core) {
		gain_exp(other.exp_value);
	}
}

var _colliding_projectile = instance_place(x, y, obj_tower_projectile);
if (_colliding_projectile) {
	current_health -= _colliding_projectile.damage;
	instance_destroy(_colliding_projectile);
}

var _colliding_shield = instance_place(x, y, obj_shield);

var _opposite_direction = _direction * (((_direction + 180) % 360) / _direction);
var _edgex = x + (origin_offset * cos(_opposite_direction * (pi / 180)));
var _edgey = y + (origin_offset * sin(_opposite_direction * (pi / 180)));

draw_circle_color(_edgex, _edgey, 5, c_black, c_black, false);

if (_colliding_shield && _colliding_shield.shield_health > 0) {
	//var _distance_to_shield_center = point_distance(x, y, _colliding_shield.x, _colliding_shield.y);
	//_distance_to_shield_center > (_colliding_shield.shield_radius - _colliding_shield.shield_ring_width) 
	
	bounce_back_offset = ((_direction + 180) % 360) / _direction;
	_colliding_shield.take_damage(melee_damage);
} else if (bounce_back_offset > 0) {
	
	speed -= acceleration;
	
	if (speed < 0.05) {
		bounce_back_offset = 0;
	}
	
	last_speed = speed;
}

if (speed < max_speed && bounce_back_offset == 0) {
	var _new_speed = speed + acceleration;
	speed = clamp(_new_speed, 0, max_speed);
}