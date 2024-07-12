direction = image_angle;
gun_angle = direction;

// Function called when the projectile is fired from a player
destroy_enemy = function()
{
	// Creates a smoke particle system that will follow the projectile
	var _new_explosion= instance_create_depth(x, y, depth, obj_particle_handler);
	_new_explosion.set_enemy_defeat();
	_new_explosion.owner = self;
}

pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}