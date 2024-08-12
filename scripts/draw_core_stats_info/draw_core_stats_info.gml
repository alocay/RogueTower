function draw_core_stats_info(_start_x, _start_y) {
	var _stats = [
		{ 
			label: "Core HP",
			stat_type: STAT_TYPE.CORE,
			property: "hp"
		}
	];
	
	draw_stats_info(_stats, _start_x, _start_y);
}