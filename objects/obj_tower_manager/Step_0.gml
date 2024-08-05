/// @description Tower placing logic

if (obj_game_manager.current_game_state != GAME_STATE.PLACE_TOWER) {
	return;
}

if (is_placing && tower_type != noone) {
	if (!tower_to_place) {
		var _tower_obj = noone;
		var _tower_struct = noone;
		
		switch(tower_type) {
			case ACTOR_TYPE.TOWER_ARC:
				_tower_obj = obj_tesla_turret;
				_tower_struct = new ArcTower();
				break;
			default: 
				_tower_obj = obj_ballistic_tower;
				_tower_struct = new Tower();
				break;
		}
		tower_to_place = instance_create_layer(x, y, "Towers", _tower_obj, _tower_struct);
	}
	
	//var _width_offset = tower_to_place.sprite_width / 2;
	//var _height_offset = tower_to_place.sprite_height / 2;
	tower_to_place.x = mouse_x;// - _width_offset;
	tower_to_place.y = mouse_y;// - _height_offset;
	is_ready_to_place = true;
}
