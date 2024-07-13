/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (owner.type == ACTOR_TYPE.CREATURE_BALLISTIC) {
	logger("cb");
	logger(speed);
	logger(direction);
}

if (speed <= 0 || direction == noone) {
	return;
}

x += speed * cos(degtorad(direction));
y -= speed * sin(degtorad(direction));
