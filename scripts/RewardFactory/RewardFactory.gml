// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RewardFactory() constructor {
	rewards = [
		{ 
			option: REWARD_OPTION.DAMAGE_MINOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 5,
			chance: 0.4,
			factory: new DamageReward(REWARD_TYPE.FLAT_INCREASE, 5, "Increase all tower damage by 5")
		},
		{ 
			option: REWARD_OPTION.DAMAGE_MAJOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 10,
			chance: 0.25,
			factory: new DamageReward(REWARD_TYPE.FLAT_INCREASE, 10, "Increase all tower damage by 10")
		},
		{ 
			option: REWARD_OPTION.DAMAGE_MINOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.05,
			chance: 0.5,
			factory: new DamageReward(REWARD_TYPE.PCT_INCREASE, 0.05, "Increase all tower damage by 5%")
		},
		{ 
			option: REWARD_OPTION.DAMAGE_MAJOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.1,
			chance: 0.3,
			factory: new DamageReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase all tower damage by 10%")
		},
		{ 
			option: REWARD_OPTION.FIRE_RATE_MINOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.05,
			chance: 0.3,
			factory: new FireRateReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase all tower fire rate by 5%")
		},
		{ 
			option: REWARD_OPTION.FIRE_RATE_MINOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 0.1,
			chance: 0.2,
			factory: new FireRateReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase all tower fire rate by 0.1")
		},
		{ 
			option: REWARD_OPTION.FIRE_RATE_MAJOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.1,
			chance: 0.15,
			factory: new FireRateReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase all fire rate by 10%")
		},
		{ 
			option: REWARD_OPTION.FIRE_RATE_MAJOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 0.5,
			chance: 0.1,
			factory: new FireRateReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase all tower fire rate by 0.5")
		},
		{ 
			option: REWARD_OPTION.TOWER,
			type: REWARD_TYPE.FUNCTION,
			amount: 1,
			chance: 0.13,
			factory: new NewTowerReward(ACTOR_TYPE.TOWER_BALLISTIC, "Place a new ballistic tower")
		},
		{
			option: REWARD_OPTION.ARC_TOWER,
			type: REWARD_TYPE.FUNCTION,
			amount: 1,
			chance: 0.25,
			factory: new NewTowerReward(ACTOR_TYPE.TOWER_ARC, "Place a new arc tower")
		},
		{ 
			option: REWARD_OPTION.TOWER_ACCURACY,
			type: REWARD_TYPE.FUNCTION,
			amount: 1,
			chance: 0.0,
			factory: new TowerAccuracyReward("Increase all tower accuracy by 1"),
		},
		{ 
			option: REWARD_OPTION.SHIELD_RECHARGE_MINOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 0.25,
			chance: 0.4,
			factory: new ShieldRechargeRateReward(REWARD_TYPE.FLAT_INCREASE, 0.25, "Increase shield recharge rate by 0.25")
		},
		{ 
			option: REWARD_OPTION.SHIELD_RECHARGE_MAJOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 0.5,
			chance: 0.08,
			factory: new ShieldRechargeRateReward(REWARD_TYPE.FLAT_INCREASE, 0.5, "Increase shield recharge rate by 0.5")
		},
		{ 
			option: REWARD_OPTION.SHIELD_RECHARGE_MINOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.05,
			chance: 0.43,
			factory: new ShieldRechargeRateReward(REWARD_TYPE.PCT_INCREASE, 0.05, "Increase shield recharge rate by 5%")
		},
		{ 
			option: REWARD_OPTION.SHIELD_RECHARGE_MAJOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.1,
			chance: 0.12,
			factory: new ShieldRechargeRateReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase shield recharge rate by 10%")
		},
		{ 
			option: REWARD_OPTION.SHIELD_REPULSION_MINOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 1,
			chance: 0.6,
			factory: new ShieldRepulsionStrengthReward(REWARD_TYPE.FLAT_INCREASE, 1, "Increase shield repulsion force by 1")
		},
		{ 
			option: REWARD_OPTION.SHIELD_REPULSION_MAJOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 3,
			chance: 0.35,
			factory: new ShieldRepulsionStrengthReward(REWARD_TYPE.FLAT_INCREASE, 3, "Increase shield repulsion force by 3")
		},
		{ 
			option: REWARD_OPTION.SHIELD_REPULSION_MINOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.05,
			chance: 0.63,
			factory: new ShieldRepulsionStrengthReward(REWARD_TYPE.PCT_INCREASE, 0.05, "Increase shield repulsion force by 5%")
		},
		{ 
			option: REWARD_OPTION.SHIELD_REPULSION_MAJOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.1,
			chance: 0.38,
			factory: new ShieldRepulsionStrengthReward(REWARD_TYPE.PCT_INCREASE, 0.1, "Increase shield repulsion force by 10%")
		},
		{ 
			option: REWARD_OPTION.SHIELD_STRENGTH_MINOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 10,
			chance: 0.65,
			factory: new ShieldStrengthReward(REWARD_TYPE.FLAT_INCREASE, 10, "Increase max shield strength by 10")
		},
		{ 
			option: REWARD_OPTION.SHIELD_STRENGTH_MAJOR,
			type: REWARD_TYPE.FLAT_INCREASE,
			amount: 50,
			chance: 0.3,
			factory: new ShieldStrengthReward(REWARD_TYPE.FLAT_INCREASE, 50, "Increase max shield strength by 50")
		},
		{ 
			option: REWARD_OPTION.SHIELD_STRENGTH_MINOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.05,
			chance: 0.7,
			factory: new ShieldStrengthReward(REWARD_TYPE.PCT_INCREASE, 0.05, "Increase max shield strength by 5%")
		},
		{ 
			option: REWARD_OPTION.SHIELD_STRENGTH_MAJOR,
			type: REWARD_TYPE.PCT_INCREASE,
			amount: 0.1,
			chance: 0.35,
			factory: new ShieldStrengthReward(REWARD_TYPE.FLAT_INCREASE, 0.1, "Increase max shield strength by 10%")
		}
	];
	
	/// @desc Sorts the rewards array by chance from lowest to highest
	sort_rewards = function() {
		array_sort(rewards, function (_c1, _c2) {
			if (_c1.chance < _c2.chance) {
				return -1;
			}
			
			if (_c1.chance > _c2.chance) {
				return 1;
			}
			
			return 0;
		});
	};
	
	/// @desc Gets a random reward that is not one of the excluded ones
	/// @param {array} _exclude Reward types to exclude
	/// @returns The unique random reward
	get_unique_random_reward = function(_exclude = []) {
		var _reward = noone;
		
		while(_reward == noone or array_contains(_exclude, _reward.option)) {
			_reward = get_weighted_random_reward();
		}
		
		return _reward;
	}
	
	/// @desc Gets a random reward weighted by its chance
	/// @returns {struct} The reward struct
	get_weighted_random_reward = function() {
		var _roll = random(1);
		var _last_index = array_length(rewards) - 1;
		var _reward = rewards[_last_index];
		
		for (var _i = 0; _i < array_length(rewards); _i++) {
			if (_roll <= rewards[_i].chance) {
				_reward = rewards[_i];
				break;
			}
		}
		
		return _reward;
	};
}