
arc = function(_target) {
	logger("arcing...");
	var _new_dir = point_direction(x, y, _target.x, _target.y);
	var _struct = owner.projectile_factory.get_projectile_by_type(owner);
	array_push(enemies_hit, _target.id);
	array_copy(_struct.enemies_hit, 0, enemies_hit, 0, array_length(enemies_hit));
	_struct.arc_count = arc_count + 1;
	_struct.owner.projectile_speed = owner.projectile_speed;
	_struct.owner.gun_angle = _new_dir;
	_struct.owner.projectile_scale = owner.projectile_scale;
	_struct.owner.projectile_damage = owner.projectile_damage;
	var _new_arc = instance_create_layer(x, y, "Projectiles", obj_arc_projectile, _struct);
	
	logger("creating: " + string(_new_arc.id));
	_new_arc.fire();
}

pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}