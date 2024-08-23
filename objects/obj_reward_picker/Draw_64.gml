if (global.game_state != GAME_STATE.REWARD || array_length(reward_options) <= 0 || is_showing_rewards) {
	return;
}

for(var _i = 0; _i < array_length(reward_options); _i++) {
	var _x = (_i * 300) + 250;
	var _y = 100;
	
	var _new_reward_card = instance_create_layer(_x, _y, "Rewards", obj_reward_card);
	_new_reward_card.reward = reward_options[_i];
	_new_reward_card.owner = self;
	array_push(reward_cards, _new_reward_card);
}

is_showing_rewards = true;