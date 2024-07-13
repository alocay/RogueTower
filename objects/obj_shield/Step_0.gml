/// @description Shield logic

if (obj_game_manager.current_game_state != GAME_STATE.PLAYING) {
	return;
}

if (in_full_recharge && current_charge >= max_shield_health) {
	shield_health = max_shield_health;
	current_charge = 0;
	in_full_recharge = false;
}

var _recharge_window = 1 / recharge_division;
var _recharge_amount = recharge_rate_per_sec / recharge_division;

if (recharge_cooldown >= _recharge_window) {
	if (!in_full_recharge) {
		shield_health = clamp(shield_health + _recharge_amount, 0, max_shield_health)
	} else {
		current_charge = clamp(current_charge + _recharge_amount, 0, max_shield_health)
	}
	
	recharge_cooldown = 0;
} else {
	recharge_cooldown += delta_time / 1000000;
}

var _colliding_projectile = instance_place(x, y, obj_tower_projectile);
if (_colliding_projectile 
	&& !object_is_ancestor(_colliding_projectile.owner.object_index, obj_tower_parent) 
	&& shield_health > 0) {
	take_damage(_colliding_projectile.damage);
	instance_destroy(_colliding_projectile);
}