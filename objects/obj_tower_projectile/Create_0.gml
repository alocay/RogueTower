// Variable used for the owner of the projectile
owner = noone;
// Variable used for speed drop off from owner when fired
speed_dropoff = 0.5;
// Variable used for the arena wall edge buffers
wall_buffer = 180;

// Speed variable for projectiles inital speed
speed = 5;
// Variable used for storing the speed when the game is paused
last_speed = speed;
damage = 0;

// Function called when the projectile is fired from a player
fire = function()
{	
	// Sets direction of projectile to the players gun angle
	direction = owner.gun_angle;
	damage = owner.projectile_damage;
	// Sets the angle of the projectile to the direction
	image_angle = direction;
	
	// Creates a smoke particle system that will follow the projectile
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	_new_smoke.set_smoke();
	_new_smoke.owner = self;
}

pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}