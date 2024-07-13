/// @description Game manager initialization
// States used for storing the game playing state
enum GAME_STATE
{
	NONE,
	SETUP,
	PLAYING,
	REWARD,
	PLACE_TOWER,
	PAUSED,
	LOST
}

is_ready = false;
is_setting_up = false;
is_initial_reward = false;
is_showing_rewards = false;
current_game_state = GAME_STATE.NONE;
reward_options = [];
reward_cards = [];
next_exp_cap = 30;

setup_game = function() {
	current_game_state = GAME_STATE.SETUP;
	is_setting_up = true;
	
	if (!instance_exists(obj_debug_manager)) {
		instance_create_layer(x, y, "Managers", obj_debug_manager);
	}
	
	if (!instance_exists(obj_enemy_director)) {
		instance_create_layer(x, y, "Managers", obj_enemy_director);
	}
	
	if (!instance_exists(obj_hud_manager)) {
		instance_create_layer(x, y, "Managers", obj_hud_manager);
	}
	
	if (!instance_exists(obj_reward_manager)) {
		instance_create_layer(x, y, "Managers", obj_reward_manager);
	}
	
	if (!instance_exists(obj_tower_manager)) {
		instance_create_layer(x, y, "Managers", obj_tower_manager);
	}
	
	if (!instance_exists(obj_shield)) {
		instance_create_layer(room_width / 2,room_height / 2, "Instances", obj_shield);
	}
	
	if (!instance_exists(obj_core)) {
		instance_create_layer(room_width / 2,room_height / 2, "Instances", obj_core);
	}
	
	is_initial_reward = true;
	choose_reward();
}

start_game = function() {
	is_ready = true;
	is_setting_up = false;
	current_game_state = GAME_STATE.PLAYING;
}

calculate_next_experience_cap = function() {
	next_exp_cap = round(power(next_exp_cap, 1.2))
}

choose_reward = function() {
	current_game_state = GAME_STATE.REWARD;
	freeze();
	reward_options = is_initial_reward ? obj_reward_manager.get_initial_options() : obj_reward_manager.get_options();
}

apply_rewards = function(_type) {
	var _auto_resume = true;
	
	switch(_type) {
		case REWARD_OPTIONS.TOWER:
			place_tower();
			_auto_resume = false;
		break;
		case REWARD_OPTIONS.FIRE_RATE:
			with(obj_core) {
				increase_fire_rate_pct(0.5);
			}
		break;
		case REWARD_OPTIONS.DAMAGE:
			with(obj_core) {
				increase_projectile_damage_pct(0.05);
			}
		break;
		default:
			// do nothing
	}
	
	for (var _i = 0; _i < array_length(reward_cards); _i++) {
		instance_destroy(reward_cards[_i]);
	}
	
	reward_cards = [];
	reward_options = [];
	is_showing_rewards = false;
	
	if (_auto_resume) {
		resume();
	}
}

place_tower = function() {
	current_game_state = GAME_STATE.PLACE_TOWER;
	with(obj_tower_manager) {
		start_tower_placement(ACTOR_TYPE.TOWER_BALLISTIC);
	}
}

tower_placement_complete = function() {
	if (is_initial_reward) {
		is_initial_reward = false;
		start_game();
	} else {
		resume();
	}
}

freeze = function() {	
	with(obj_tower_projectile) {
		pause();
	}
	
	with(obj_enemy) {
		pause();
	}
}

resume = function() {
	current_game_state = GAME_STATE.PLAYING;
	
	with(obj_tower_projectile) {
		resume();
	}
	
	with(obj_enemy) {
		resume();
	}
}

lose_game = function()
{
	// Sets the current game state to ended
	current_game_state = GAME_STATE.LOST;
}
