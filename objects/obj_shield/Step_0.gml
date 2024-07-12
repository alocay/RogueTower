/// @description Shield logic

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (in_full_recharge && current_charge >= max_shield_health) {
	shield_health = max_shield_health;
	current_charge = 0;
	in_full_recharge = false;
}

if (recharge_cooldown >= 1) {
	if (!in_full_recharge) {
		shield_health = clamp(shield_health + recharge_rate_per_sec, 0, max_shield_health)
	} else {
		current_charge = clamp(current_charge + recharge_rate_per_sec, 0, max_shield_health)
	}
	
	recharge_cooldown = 0;
} else {
	recharge_cooldown += delta_time;
}