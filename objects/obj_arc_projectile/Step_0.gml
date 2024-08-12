/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (speed <= 0 || direction == noone) {
	return;
}

time_alive_sec += delta_time / 1000000;

var _colliding_enemy = instance_place(x, y, obj_enemy_parent);
var _child_arcs = [];

if (_colliding_enemy) {
	with(obj_enemy_parent) {
		if (id == _colliding_enemy.id) {
			take_damage(other.damage);
			continue;
		}
		
		var _distance = point_distance(_colliding_enemy.x, _colliding_enemy.y, x, y);
		if (_distance <= other.max_arc_distance && other.arc_count < other.max_arcs) {
				other.arc(self, _colliding_enemy);
		}
	}
}

if (has_arced) {
	instance_destroy();
}

//var _num_of_child_arcs = array_length(_child_arcs);
//if (_num_of_child_arcs > 0) {
//	for (var _i = 0; _i < _num_of_child_arcs; _i++) {
//		arc(_child_arcs[_i], self.id);
//	}
	
//	instance_destroy();
//}

if (arc_count >= max_arcs || time_alive_sec >= max_lifetime) {
	instance_destroy();
}

x += speed * cos(degtorad(direction));
y -= speed * sin(degtorad(direction));
