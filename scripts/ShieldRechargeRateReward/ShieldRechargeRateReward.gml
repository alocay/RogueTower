function ShieldRechargeRateReward(_type, _amount, _text) : RewardBase() constructor {
	type = _type;
	amount = _amount;
	text = _text;
	
	apply = function () {
		if (type == REWARD_TYPE.FLAT_INCREASE) {
			obj_shield.increase_recharge_rate_per_sec(amount);
		} else if (type == REWARD_TYPE.PCT_INCREASE) {
			obj_shield.increase_recharge_rate_per_sec_pct(amount);
		}
		
		signal_applied(true);
	};
}