/// @description Reward click

if (global.game_state != GAME_STATE.REWARD or reward == noone) {
	return;
}

reward.apply();

if (owner != noone) {
	instance_destroy(owner);
}
