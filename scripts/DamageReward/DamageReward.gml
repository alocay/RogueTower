function DamageReward(_type, _amount, _text) : RewardBase() constructor {
	type = _type;
	amount = _amount;
	text = _text;
	
	apply = function () {
		if (type == REWARD_TYPE.FLAT_INCREASE) {
			global.stats.base_tower.increase_damage(_amount)
		} else if (type == REWARD_TYPE.PCT_INCREASE) {
			global.stats.base_tower.increase_damage_pct(amount);
		}
		
		signal_applied(true);
	};
}