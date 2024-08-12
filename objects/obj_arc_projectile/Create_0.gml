
event_inherited();

max_speed = 0.75;
last_speed = speed;
damage = 0;
max_arc_distance = 100;
max_arcs = 1;
max_lifetime = 5;
arc_count = 0;
time_alive_sec = 0;
enemies_hit = [];
has_arced = false;
damage = 5;

arc = function(_target, _origin) {
	var _new_dir = point_direction(x, y, _target.x, _target.y);
	var _new_arc = instance_create_layer(_origin.x, _origin.y, "Projectiles", obj_arc_projectile);
	_new_arc.fire(_new_dir);
	has_arced = true;
}

fire = function(_direction) {
	direction = _direction ? _direction : owner.gun_angle;
	speed = max_speed;
	last_speed = max_speed;
	damage = 5;
	image_angle = direction;
	image_xscale = 1;
	image_yscale = 1;
	
	var _new_spark = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	// _new_spark.set_spark();
	// _new_spark.owner = self;
}

arc2 = function(_target, _parent_id) {
	logger("arcing...");
	var _new_dir = point_direction(x, y, _target.x, _target.y);
	var _struct = owner.projectile_factory.get_projectile_by_type(owner);
	array_push(enemies_hit, _parent_id);
	array_copy(_struct.enemies_hit, 0, enemies_hit, 0, array_length(enemies_hit));
	_struct.arc_count = arc_count + 1;
	_struct.owner.projectile_speed = owner.projectile_speed;
	_struct.owner.gun_angle = _new_dir;
	_struct.owner.projectile_scale = owner.projectile_scale;
	_struct.owner.projectile_damage = owner.projectile_damage;
	
	
	var _new_arc = instance_create_layer(x, y, "Projectiles", obj_arc_projectile, _struct);
	
	
	logger("new arc");
	logger(_new_arc.enemies_hit);
	
	_new_arc.fire();
}

pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}