/// @description Tower placing logic

if (obj_game_manager.current_game_state != GAME_STATE.PLACE_TOWER) {
	return;
}

if (is_placing && tower_type != noone) {
	if (!tower_to_place) {
		tower_to_place = instance_create_layer(x, y, "Towers", obj_tower, new Tower(projectile_factory));
	}
	
	//var _width_offset = tower_to_place.sprite_width / 2;
	//var _height_offset = tower_to_place.sprite_height / 2;
	tower_to_place.x = mouse_x;// - _width_offset;
	tower_to_place.y = mouse_y;// - _height_offset;
	is_ready_to_place = true;
}
