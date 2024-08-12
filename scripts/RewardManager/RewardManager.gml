function RewardManager() constructor {
	number_of_options = 3;
	current_reward_options = [];
	reward_factory = new RewardFactory();
	reward_factory.sort_rewards();
	initial_tower_reward = new NewTowerReward(ACTOR_TYPE.TOWER_BALLISTIC, "Place a new tower"); 
	initial_arc_tower_reward = new NewTowerReward(ACTOR_TYPE.TOWER_ARC, "Place a new arc tower"); 

	get_initial_options = function() {
		return [initial_tower_reward, initial_arc_tower_reward, initial_tower_reward];
	}

	get_options = function() {
		var _rewards = [];
		var _rewards_to_exclude = [];
		for (var _i = 0; _i < number_of_options; _i++) {
			var _reward = reward_factory.get_unique_random_reward(_rewards_to_exclude);
			array_push(_rewards, _reward);
			array_push(_rewards_to_exclude, _reward.option);
		}
	
		return array_map(_rewards, function(_r) { return _r.factory });
	}

	apply_reward = function() {
		current_reward_options = [];
	}
}