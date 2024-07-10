/// @description Handling exp and leveling

if (!is_ready && !is_setting_up) {
	setup_game();
	return;
}

if (current_game_state == GAME_STATE.PLAYING) {	
	// Loops through the player objects
	with (obj_core) {
		if (health > 0) {
			if (experience >= other.next_exp_cap) {
				level_up(experience - other.next_exp_cap);
				other.calculate_next_experience_cap();
				other.choose_reward();
			}
		}
	}
}