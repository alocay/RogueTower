/// @description Reward click

if (obj_game_manager.current_game_state != GAME_STATE.REWARD or reward == noone) {
	return;
}

reward.apply();
