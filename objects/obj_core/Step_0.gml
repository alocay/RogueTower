if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

var _colliding_projectile = instance_place(x, y, obj_ballistic_projectile);
if (_colliding_projectile 
	&& !object_is_ancestor(_colliding_projectile.owner.object_index, obj_tower_parent) 
	&& core_health > 0) {
	take_damage(_colliding_projectile.damage);
	instance_destroy(_colliding_projectile);
}
