/// @description Initializes tower properties and projectile functions

tower_fire_rate = 1.0;

direction = image_angle;
gun_angle = direction;
rotation_speed = 0.25;
is_flashed = false;
flash_time = 0.2;
flash_cooldown = flash_time;
gun_offset_x = 15;
gun_offset_y = 15;
bullet_speed = 1.0;
tower_fire_cooldown = 0;
target = noone;
target_range = 500;

create_projectile = function(_gun_angle)
{
	// Offsets for players gun position
	var _projectile_origin_x = 13;
	var _projectile_origin_y = 20;
	
	// Gun angle stored in radians
	var _theta = degtorad(_gun_angle);
	
	// Calculates the adjusted positions from offsets and angle
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	// Sets new postions from adjusted positions and players position
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;

	// Creates new player projectile from the new positions
	var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_tower_projectile);
	_new_projectile.owner = self;
	_new_projectile.fire();
	
	// Creates new sparked projectile from angle and offset to add to players fired effect
	//var _new_hit = instance_create_depth(_projectile_pos_x, _projectile_pos_y, depth - 1, obj_particle_handler);
	//_new_hit.set_player_shot();
	//_new_hit.owner = self;
	//_new_hit.set_angle(_gun_angle);
	//_new_hit.set_offset(true, 110, 0)
	
	//// Plays firing audio sound
	//var _sound_spark = audio_play_sound(snd_player_fire, 100, false, 0.3, 0, 1.0);
}

shoot_tower = function()
{
	if (tower_fire_cooldown <= 0) 
	{
		tower_fire_cooldown = tower_fire_rate;
		create_projectile(gun_angle);
	}
}