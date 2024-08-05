/// @description Handles spawns

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

// Checks if the cooldown has run down
if (cooldown <= 0)
{
	// Calls the spawn enemy function 
	spawn_enemy();
}
else
{
	// Counts down the spawner cooldown
	cooldown -= delta_time * 0.000001;
}

if (obj_clock.time_passed_secs > 90) {
	cooldown_rate = 0.25;
} else if (obj_clock.time_passed_secs > 60) {
	cooldown_rate = 0.5
} else if (obj_clock.time_passed_secs > 30) {
	cooldown_rate = 0.75;
}