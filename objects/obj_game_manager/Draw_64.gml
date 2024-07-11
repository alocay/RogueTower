/// @description Draws GUI

// Loops through the player objects
with (obj_core)
{
	draw_set_colour(c_white);
	draw_text(10, 10, "Level: " + string(level) + "\n"
		+ "Exp: " + string(experience) + "\n" 
		+ "Next @: " + string(other.next_exp_cap) + "\n"
		+ "Fire rate: " + string(attributes.fire_rate) + "\n"
		+ "Damage: " + string(attributes.projectile_damage));
}

if (current_game_state == GAME_STATE.REWARD && !is_showing_rewards && array_length(reward_options) > 0) {
	for(var _i = 0; _i < array_length(reward_options); _i++) {
		var _x = (_i * 300) + 250;
		var _y = 100;
	
		var _new_reward = instance_create_layer(_x, _y, "Rewards", obj_reward_card);
		array_push(reward_cards, _new_reward);
	
		switch(reward_options[_i]) {
			case REWARD_OPTIONS.TOWER:
				_new_reward.set_options("New Tower", "", REWARD_OPTIONS.TOWER);
			break;
			case REWARD_OPTIONS.FIRE_RATE:
				_new_reward.set_options("Fire Rate", "Increase by 5%", REWARD_OPTIONS.FIRE_RATE);
			break;
			case REWARD_OPTIONS.DAMAGE:
				_new_reward.set_options("Damage", "Increase by 5%", REWARD_OPTIONS.DAMAGE);
			break;
			default:
				return;
		}
	}
	
	is_showing_rewards = true;
}

