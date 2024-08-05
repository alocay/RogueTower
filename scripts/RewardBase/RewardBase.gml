function RewardBase() constructor {
	signal_applied = function(_auto_resume) {
		obj_game_manager.reward_applied(_auto_resume);
	}
}