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
