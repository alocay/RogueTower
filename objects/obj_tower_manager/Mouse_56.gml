/// @description Handle tower placement

if (obj_game_manager.current_game_state != GAME_STATE.PLACE_TOWER 
	|| !is_placing 
	|| !tower_to_place) {
	return;
}

tower_to_place = noone;
is_placing = false;
tower_type = noone;
is_ready_to_place = false;

obj_game_manager.tower_placement_complete();
