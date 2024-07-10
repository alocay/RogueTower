
if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

var _tower = instance_nearest(x, y, obj_tower)

move_towards_point(_tower.x, _tower.y, speed)

// Checks if the enemy is out of health
if (current_health <= 0)
{	
	// Destroys itself
	instance_destroy();
	
	with(obj_core) {
		gain_exp(other.exp_value);
	}
}
