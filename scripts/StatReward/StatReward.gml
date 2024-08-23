/// @desc StatReward object
/// @param {Enum.REWARD_OPTION} _option The reward option
/// @param {Enum.REWARD_EFFECT} _effect The reward effect
/// @param {Real} _amount The reward amount
/// @param {String} _title Optional title label
/// @param {Enum.ACTOR_TYPE} _affectee The actor affected by the reward. Defaults to NONE.
/// @param {String} _subtitle Optional subtitle label
function StatReward(_option, _effect, _amount, _title = "",  _affectee = ACTOR_TYPE.NONE, _subtitle = "") : RewardBase() constructor {
	option = _option;
	effect = _effect;
	affectee = _affectee;
	amount = _amount;
	title = _title;
	subtitle = _subtitle;
	
	apply = function () {
		var _affected_stats = global.stats.get_tower_stats(affectee);
		switch(_option) {
			case REWARD_OPTION.DAMAGE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_damage(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_damage_pct(amount);
				}
				break;
			case REWARD_OPTION.ACCURACY:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_accuracy(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_damage_pct(amount);
				}
				break;
			case REWARD_OPTION.FIRE_RATE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_attacks_per_sec(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_attacks_per_sec_pct(amount);
				}
				break;
			case REWARD_OPTION.RANGE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_range(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_range_pct(amount);
				}
				break;
			case REWARD_OPTION.RANGE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_range(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_range_pct(amount);
				}
				break;
			case REWARD_OPTION.ROTATION_SPEED:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_rotation_speed(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_rotation_speed_pct(amount);
				}
				break;
			case REWARD_OPTION.ARCS:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_max_arcs(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_max_arcs_pct(amount);
				}
				break;
			case REWARD_OPTION.ARC_DISTANCE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_max_arc_distance(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_max_arc_distance_pct(amount);
				}
				break;
			case REWARD_OPTION.PIERCES:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_max_pierces(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_max_pierces_pct(amount);
				}
				break;
			case REWARD_OPTION.PROJECTILE_SPEED:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_projectile_speed(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_projectile_speed_pct(amount);
				}
				break;
			case REWARD_OPTION.PROJECTILE_SCALE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					_affected_stats.increase_projectile_scale(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					_affected_stats.increase_projectile_scale_pct(amount);
				}
				break;
			case REWARD_OPTION.SHIELD_RECHARGE_RATE:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.shield.increase_recharge_rate_per_sec(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.shield.increase_recharge_rate_per_sec_pct(amount);
				}
				break;
			case REWARD_OPTION.SHIELD_RECHARGE_AMOUNT:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.shield.increase_recharge_amount(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.shield.increase_recharge_amount_pct(amount);
				}
			case REWARD_OPTION.SHIELD_REPULSION:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.shield.increase_repulsion_strength(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.shield.increase_repulsion_strength_pct(amount);
				}
				break;
			case REWARD_OPTION.SHIELD_STRENGTH:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.shield.increase_max_shield_health(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.shield.increase_max_shield_health_pct(amount);
				}
				break;
			case REWARD_OPTION.SHIELD_RADIUS:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.shield.increase_shield_radius(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.shield.increase_shield_radius_pct(amount);
				}
				break;
			case REWARD_OPTION.CORE_HP:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.core.increase_hp(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.core.increase_hp_pct(amount);
				}
				break;
			case REWARD_OPTION.EXP_MULTIPLIER:
				if (_effect == REWARD_EFFECT.FLAT_INCREASE) {
					global.stats.xp.increase_multiplier(amount);
				} else if (_effect = REWARD_EFFECT.PCT_INCREASE) {
					global.stats.xp.increase_multiplier_pct(amount);
				}
				break;
		}
		
		signal_applied(true);
	};
}