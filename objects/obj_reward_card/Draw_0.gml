/// @description Draw card

draw_self();

if (title != noone) {
	draw_set_colour(c_white);
	draw_text(x + 25, y + 20, title);
	
	if (description != noone) {
		draw_text(x + 10, y + 30, description);
	}
}