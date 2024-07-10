/// @description Tower parent

initialized = false;

gun_angle = direction
gun_offset_x = 15;
gun_offset_y = 15;

fire_rate = 2.0;
fire_cooldown = 0;

rotation_speed = 0.25;
target_range = 750;
target = noone;
is_targetting = false;
targetting_delta_threshold = 0.15;

projectile_speed = 1.0;
projectile_speed = 1.0;
projectile_damage = 5;

//increase_fire_rate_pct = function(_pct) {
//	fire_rate = fire_rate * (1 + _pct);
//}

//increase_fire_rate_flat = function(_amount) {
//	fire_rate += _amount;
//}

//increase_projectile_damage_pct = function(_pct) {
//	projectile_damage = projectile_damage * (1 + _pct);
//}

create_projectile = function(_gun_angle)
{
	// Offsets for players gun position
	var _projectile_origin_x = 0;
	var _projectile_origin_y = 0;
	
	// Gun angle stored in radians
	var _theta = degtorad(_gun_angle);
	
	// Calculates the adjusted positions from offsets and angle
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	// Sets new postions from adjusted positions and players position
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = _theta > 1 ? y - _projectile_adjust_y : y + _projectile_adjust_y;

	// Creates new player projectile from the new positions
	var _new_projectile = instance_create_layer(x, y, "Projectiles", obj_tower_projectile);
	_new_projectile.owner = self;
	_new_projectile.fire();
}

shoot_tower = function() {
	if (fire_cooldown <= 0) 
	{
		fire_cooldown = fire_rate;
		create_projectile(gun_angle);
	}
}