/// @description Draws GUI

if (current_game_state == GAME_STATE.REWARD && !is_showing_rewards && array_length(reward_options) > 0) {
	logger("drawing reward!");
	for(var _i = 0; _i < array_length(reward_options); _i++) {
		var _x = (_i * 300) + 250;
		var _y = 100;
	
		var _new_reward_card = instance_create_layer(_x, _y, "Rewards", obj_reward_card);
		_new_reward_card.reward = reward_options[_i];
		array_push(reward_cards, _new_reward_card);
	}
	
	is_showing_rewards = true;
}

if (current_game_state = GAME_STATE.LOST) {
	var _room_width_offset = room_width / 3;
	var _room_height_offset = room_height / 8;
	// var _new_reward = instance_create_layer(_room_width_offset, _room_height_offset, "Rewards", obj_reward_card);
	// _new_reward.set_options("You Lose!", "", REWARD_OPTIONS.TOWER);
}

