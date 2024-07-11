/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (speed <= 0 || direction == noone) {
	return;
}

x += speed * cos(direction * (pi / 180));
y -= speed * sin(direction * (pi / 180));
