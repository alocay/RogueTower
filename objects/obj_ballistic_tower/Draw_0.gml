/// @description Draws turrent base and gun

draw_self();

// Draws the tower's gun and index depends on if flashed
draw_sprite_ext(
	spr_tower_gun, 
	false,
	x, 
	y,
	1.0, 
	1.0, 
	tower.gun_angle, 
	c_white, 
	image_alpha);
