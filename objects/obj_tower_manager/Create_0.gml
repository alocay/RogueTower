/// @description Tower manager initializer

is_placing = false;
is_ready_to_place = false;
tower_to_place = noone;
tower_type = noone;

start_tower_placement = function(_type) {
	is_placing = true;
	tower_type = _type;
}