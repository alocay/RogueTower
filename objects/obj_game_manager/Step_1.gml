/// @description Check if core is dead

with(obj_core) {
	if (health <= 0) {
		lose_game();
	}
}
