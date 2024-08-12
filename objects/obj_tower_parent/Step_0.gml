if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (tower == noone) {
	return;
}

var _target = tower.acquire_target();

if (_target) {
	_target.image_blend = c_red;
}
	
tower.adjust_gun(x, y);

var _attack_window = 1 / tower.get_attacks_per_sec();

if (attack_cooldown >= _attack_window) {
	if (tower.target && !tower.is_targetting) {
		tower.shoot();
		attack_cooldown = 0;
	}
} else {
	attack_cooldown += delta_time / 1000000;
}
