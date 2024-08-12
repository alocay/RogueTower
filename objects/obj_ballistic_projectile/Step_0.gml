/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (projectile.speed <= 0 || projectile.direction == noone) {
	return;
}

logger(string(id) + " - " + string(projectile.projectile_obj.x) + ", " + string(projectile.projectile_obj.y));

if (projectile.shield_hit()) {
	obj_shield.take_damage(projectile.get_damage());
	instance_destroy();
}

var _enemies_hit = projectile.get_enemies_hit();
var _number_of_enemies_hit = array_length(_enemies_hit);
if (_number_of_enemies_hit > 0) {
	for (var _i = 0; _i < _number_of_enemies_hit; _i++) {
		if (number_of_hits > projectile.get_max_pierces()) {
			break;
		}
		
		_enemies_hit[_i].take_damage(projectile.get_damage());
		number_of_hits++;
	}
	
	instance_destroy();
}

var _position_deltas = projectile.move_delta();

x += _position_deltas.x_delta;
y -= _position_deltas.y_delta;
