if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

time_passed_secs += delta_time / 1000000;
