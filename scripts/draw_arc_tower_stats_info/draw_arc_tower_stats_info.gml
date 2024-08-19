function draw_arc_tower_stats_info(_start_x, _start_y) {
	var _stats = [
		{ 
			label: "Damage",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "damage"
		},
		{ 
			label: "DPS",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "attacks_per_sec",
			units: "s"
		},
		{ 
			label: "Rotation Speed",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "rotation_speed"
		},
		{ 
			label: "Accuracy",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "accuracy"
		},
		{ 
			label: "Number of arcs",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "max_arcs"
		},
		{ 
			label: "Arc distance",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "max_arc_distance"
		},
		{ 
			label: "Range",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "range"
		},
		{ 
			label: "Projectile Speed",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "projectile_speed"
		},
		{ 
			label: "Projectile Scale",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "projectile_scale"
		},
		{ 
			label: "Number of Pierces",
			stat_type: STAT_TYPE.ARC_TOWER,
			property: "max_pierces"
		},
	];
	
	draw_stats_info(_stats, _start_x, _start_y);
}