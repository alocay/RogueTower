current_health = 10;
exp_value = 5;

take_damage = function(_damage) {
	current_health -= _damage;
}

pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}