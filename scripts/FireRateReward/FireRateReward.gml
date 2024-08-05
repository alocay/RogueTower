function FireRateReward(_type, _amount, _text) : RewardBase() constructor {
	type = _type;
	amount = _amount;
	text = _text;
	
	apply = function () {
		if (type == REWARD_TYPE.FLAT_INCREASE) {
			obj_core.increase_fire_rate_flat(amount);
		} else if (type == REWARD_TYPE.PCT_INCREASE) {
			obj_core.increase_fire_rate_pct(amount);
		}
		
		signal_applied(true);
	};
}