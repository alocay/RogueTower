/// @description Initialize reward manager

enum REWARD_OPTIONS {
	TOWER,
	FIRE_RATE,
	DAMAGE
}

number_of_options = 3;
current_reward_options = [];

get_initial_options = function() {
	return [REWARD_OPTIONS.TOWER, REWARD_OPTIONS.TOWER, REWARD_OPTIONS.TOWER];
}

get_options = function() {
	return [REWARD_OPTIONS.TOWER, REWARD_OPTIONS.FIRE_RATE, REWARD_OPTIONS.DAMAGE];
}

apply_reward = function() {
	current_reward_options = [];
}