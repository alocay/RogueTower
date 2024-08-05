/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (speed <= 0 || direction == noone) {
	return;
}

time_alive_sec += delta_time / 1000000;

var _colliding_enemy = instance_place(x, y, obj_enemy_parent);
var _ce_id = noone;

if (_colliding_enemy != noone) {
	_ce_id = _colliding_enemy.id;
}

if (_colliding_enemy != noone
	&& !array_any(enemies_hit, function (_id) { return _id == _ce_id })) {
	logger("collinding with " + string(_colliding_enemy.id));
	with(obj_enemy_parent) {
		if (self.id == _colliding_enemy.id) {
			continue;
		}
		var _distance = point_distance(_colliding_enemy.x, _colliding_enemy.y, x, y);
		if (_distance <= other.max_arc_distance 
			&& other.arc_count < other.max_arcs 
			&& !array_any(other.enemies_hit, function (_id) { return _id == self.id })) {
				other.arc(self);
				logger("destroying: " + string(other.id));
				instance_destroy(other);
		}
	}
}

if (arc_count >= max_arcs || time_alive_sec >= max_lifetime) {
	instance_destroy();
}

x += speed * cos(degtorad(direction));
y -= speed * sin(degtorad(direction));
