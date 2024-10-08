// Empty variable for setting the particle system to
particle_sys = -1;

// Variable for setting the parent object to set to noone to start
owner = noone;

// Variables used for if the particle system is to be set to an offset and what the offset should be
is_offset = false;
x_offset = 0;
y_offset = 0;

// Variable used for dust
is_dust = false;

// Alpha variables used for lerping alpha values
target_alpha = 0;
current_alpha = 0;

// Function used for setting particle systems angle
set_angle = function(_new_angle)
{
	// Updates particle systems angle
	part_system_angle(particle_sys, _new_angle);
}

// Function used for setting particle systems offset position
set_offset = function(_is_offset, _x_offset, _y_offset)
{
	// Variables set to new variables
	is_offset = _is_offset;
	x_offset = _x_offset;
	y_offset = _y_offset;
}

// Function used for setting smoke particle system
set_smoke = function()
{
	// Creates smoke particle system
	particle_sys = part_system_create_layer("Smoke", false, ps_shoot_smoke);
	// Updates particle system position
	part_system_position(particle_sys, x, y);
}

set_spark = function() {
	particle_sys = part_system_create_layer("Spark", false, ps_spark);
	part_system_position(particle_sys, x, y);
}

set_enemy_defeat = function()
{
	// Creates explosion particle system
	particle_sys = part_system_create_layer("Explosions", false, ps_enemy_defeat);
	// Updates particle system position
	part_system_position(particle_sys, x, y);
	
	// Plays explosion sound effect
	// var _sound_explosion = audio_play_sound(snd_explosion, 100, false, 0.8);
}

set_shield_on = function()
{
	// Creates explosion particle system
	particle_sys = part_system_create_layer("Shield", false, ps_shield_glow);
	// Updates particle system position
	part_system_position(particle_sys, x, y);
	
	// Plays explosion sound effect
	// var _sound_explosion = audio_play_sound(snd_explosion, 100, false, 0.8);
}
