/// @description Handle pause

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (speed <= 0 || direction == noone) {
	return;
}

var _colliding_projectile = instance_place(x, y, obj_shield);
if (place_meeting(x, y, obj_shield) 
	&& !object_is_ancestor(self.owner.object_index, obj_tower_parent) 
	&& obj_shield.shield_health > 0) {
	obj_shield.take_damage(self.damage);
	// self.speed = 0;
	// self.visible = false;
	instance_destroy();
	return;
}

x += speed * cos(degtorad(direction));
y -= speed * sin(degtorad(direction));
