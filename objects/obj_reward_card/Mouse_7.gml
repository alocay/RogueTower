/// @description Reward click

if (obj_game_manager.current_game_state != GAME_STATE.REWARD) {
	return;
}

obj_game_manager.apply_rewards(type);
