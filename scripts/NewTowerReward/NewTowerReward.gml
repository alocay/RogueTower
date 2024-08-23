function NewTowerReward(_tower_type, _text) : RewardBase() constructor {
	type = _tower_type;
	text = _text;
	
	apply = function () {
		with(obj_game_manager) {
			place_tower(other.type);
		}
		
		signal_applied(false);
	};
}