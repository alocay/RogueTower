/// @description Initialization of enemy director

// Variables for cooldown timer that spawns new enemies 
cooldown_rate = 0.5;
cooldown = 0;

// Variable that stores the queue for enemies needing to be spawned
spawn_points = 0;

// Function called when a new enemy is due to be spawned
spawn_enemy = function()
{
	var _random_enemy_coords = get_random_enemy_spawn_point();
	var _new_enemy = instance_create_layer(_random_enemy_coords[0], _random_enemy_coords[1], "Enemies", obj_enemy, new BallisticEnemy());
	cooldown = cooldown_rate;
}

get_random_enemy_spawn_point = function() {
	var _inner_ring_diameter = room_width;
	var _inner_ring_radius = _inner_ring_diameter / 2;
	var _outer_ring_width = room_width + 100;
	var _outer_ring_height = room_height + 100;
	var _coords = generate_new_location(_outer_ring_width, _outer_ring_height, _inner_ring_radius);
	var _x = _coords[0] + (room_width / 2);
	var _y = _coords[1] + (room_height / 2);
	
	return [_x, _y];
}

generate_flock = function(_size) {
	
}


