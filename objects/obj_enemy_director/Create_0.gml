/// @description Initialization of enemy director

enum SPAWN_POINTS {
	
}

// Variables for cooldown timer that spawns new enemies 
cooldown_rate = 0.5;
cooldown = 0;

// Variable that stores the queue for enemies needing to be spawned
spawn_points = 0;
inner_ring_a = room_width + 50;
inner_ring_b = room_height + 50;
outer_ring_a = inner_ring_a + 200;
outer_ring_b = inner_ring_b + 200;

// Function called when a new enemy is due to be spawned
spawn_enemy = function()
{
	// Creates new enemy object instance
	var _new_enemy = instance_create_layer(x, y, "Enemies", obj_enemy);
	// Sets new enemy's owner to the spawner it is created from
	_new_enemy.owner = self;
	
	// Decreases the spawn queue
	// spawn_queue--;
	
	// Resets the cooldown for spawner
	cooldown = cooldown_rate;
}


