function NewTowerReward(_tower_type, _text) : RewardBase() constructor {
	type = _tower_type;
	text = _text;
	
	apply = function () {
		obj_game_manager.place_tower(type);
		signal_applied(false);
	};
}