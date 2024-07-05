draw_self();

// Draws the enemy's gun and index depends on if flashed
draw_sprite_ext(
	spr_enemy_gun, 
	is_flashed,
	x + gun_offset_x, 
	y + gun_offset_y,
	1.0, 
	1.0, 
	gun_angle, 
	c_white, 
	image_alpha);