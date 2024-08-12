function draw_exp_stats_info(_start_x, _start_y) {
	var _stats = [
		{ 
			label: "Level",
			stat_type: STAT_TYPE.EXP,
			property: "level"
		},
		{ 
			label: "Exp",
			stat_type: STAT_TYPE.EXP,
			property: "current_exp"
		},
		{ 
			label: "Exp needed",
			stat_type: STAT_TYPE.EXP,
			property: "exp_for_next_level"
		},
		{ 
			label: "Exp multiplier",
			stat_type: STAT_TYPE.EXP,
			property: "multiplier"
		}
	];
	
	draw_stats_info(_stats, _start_x, _start_y);
}