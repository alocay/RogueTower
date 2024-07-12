/// @description Check if core is dead

with(obj_core) {
	if (core_health <= 0) {
		lose_game();
	}
}
