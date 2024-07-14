logger("mousex: " + string(mouse_x) + ", mousey: " + string(mouse_y));

if (keyboard_check(vk_control)) {
	obj_enemy_director.spawn_enemy_at(mouse_x, mouse_y);
}

if (keyboard_check(vk_shift)) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}