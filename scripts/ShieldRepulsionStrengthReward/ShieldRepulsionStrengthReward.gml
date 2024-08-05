function ShieldRepulsionStrengthReward(_type, _amount, _text) : RewardBase() constructor {
	type = _type;
	amount = _amount;
	text = _text;
	
	apply = function () {
		if (type == REWARD_TYPE.FLAT_INCREASE) {
			obj_shield.increase_repulsion_strength(amount);
		} else if (type == REWARD_TYPE.PCT_INCREASE) {
			obj_shield.increase_repulsion_strength_pct(amount);
		}
		
		signal_applied(true);
	};
}