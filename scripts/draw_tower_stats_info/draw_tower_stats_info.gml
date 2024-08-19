function draw_tower_stats_info(_stat_type, _start_x, _start_y) {
	var _stats = [
		{ 
			label: "Damage",
			stat_type: _stat_type,
			property: "damage"
		},
		{ 
			label: "DPS",
			stat_type: _stat_type,
			property: "attacks_per_sec",
			units: "s"
		},
		{ 
			label: "Rotation Speed",
			stat_type: _stat_type,
			property: "rotation_speed"
		},
		{ 
			label: "Accuracy",
			stat_type: _stat_type,
			property: "accuracy"
		},
		{ 
			label: "Range",
			stat_type: _stat_type,
			property: "range"
		},
		{ 
			label: "Projectile Speed",
			stat_type: _stat_type,
			property: "projectile_speed"
		},
		{ 
			label: "Projectile Scale",
			stat_type: _stat_type,
			property: "projectile_scale"
		},
		{ 
			label: "Number of Pierces",
			stat_type: _stat_type,
			property: "max_pierces"
		},
		{ 
			label: "Number of arcs",
			stat_type: _stat_type,
			property: "max_arcs"
		},
		{ 
			label: "Arc distance",
			stat_type: _stat_type,
			property: "max_arc_distance"
		}
	];
	
	draw_stats_info(_stats, _start_x, _start_y);
}