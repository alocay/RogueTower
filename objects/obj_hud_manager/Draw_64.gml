/// @description Draw stats

if (!is_visible) {
	return;
}

draw_set_alpha(0.60);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_alpha(1.0);
var _start_x = 50;
var _start_y = 100;
draw_exp_stats_info(_start_x, _start_y);
_start_y += 60;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_core_stats_info(_start_x, _start_y);
_start_y += 15;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_shield_stats_info(_start_x, _start_y);
_start_y += 85;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_text(_start_x, _start_y, "Ballistic Tower");
_start_y += 15;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_tower_stats_info(STAT_TYPE.BALLISTIC_TOWER, _start_x, _start_y);
_start_y += 145;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_text(_start_x, _start_y, "Arc Tower");
_start_y += 15;

draw_text(_start_x, _start_y, "----------------------------");
_start_y += 15;

draw_tower_stats_info(STAT_TYPE.ARC_TOWER, _start_x, _start_y);


