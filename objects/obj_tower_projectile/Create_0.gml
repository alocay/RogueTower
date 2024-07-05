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

// Function called when the projectile is fired from a player
fire = function()
{
	// Sets sprite to player fireball
	sprite_index = spr_bullet;
	
	// Sets direction of projectile to the players gun angle
	direction = owner.gun_angle;
	// Sets the angle of the projectile to the direction
	image_angle = direction;
	
	// Adjusts the projectiles speed to factor the players speed
	//hspeed += 10 * speed_dropoff;
	//vspeed += 10 * speed_dropoff;
	
	// Creates a gun flash animation from the muzzel of the players gun
	//var _new_gun_flash = instance_create_depth(x, y, depth - 1, obj_player_shoot);
	//_new_gun_flash.owner = owner;
	//_new_gun_flash.image_angle = direction;
	
	// Creates a smoke particle system that will follow the projectile
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	_new_smoke.set_smoke();
	_new_smoke.owner = self;
}