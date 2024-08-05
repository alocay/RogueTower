pause = function() {
	last_speed = speed;
	speed = 0;
}

resume = function() {
	speed = last_speed;
}