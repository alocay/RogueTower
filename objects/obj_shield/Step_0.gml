/// @description Shield logic

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (in_full_recharge && current_charge >= max_shield_health) {
	shield_health = max_shield_health;
	current_charge = 0;
	in_full_recharge = false;
}

var _recharge_window = 1 / recharge_rate_per_sec;
var _divison = 10;
var _window = 1 / _divison;
var _ra = recharge_rate_per_sec / _divison;

var _delta_sec = delta_time / 1000000;
var _detla_ms = delta_time / 1000;

if (in_full_recharge) {
	recharge_test += _delta_sec
	recharge_test_ms += _detla_ms;
} else {
	if (recharge_test > 0) {
		logger(recharge_test);
		logger(recharge_test_ms);
		logger("window: " + string(_window));
		logger("ra: " + string(_ra));
	}
	recharge_test = 0;
	recharge_test_ms = 0;
}

if (recharge_cooldown >= _window) {
	logger("window: " + string(_window));
	logger("ra: " + string(_ra));
	logger(recharge_cooldown);
	if (!in_full_recharge) {
		shield_health = clamp(shield_health + _ra, 0, max_shield_health)
	} else {
		current_charge = clamp(current_charge + _ra, 0, max_shield_health)
	}
	
	recharge_cooldown = 0;
} else {
	recharge_cooldown += _delta_sec;
}