function draw_shield_stats_info(_start_x, _start_y) {
	var _stats = [
		{ 
			label: "Shield HP",
			stat_type: STAT_TYPE.SHIELD,
			property: "shield_health"
		},
		{ 
			label: "Max Shield HP",
			stat_type: STAT_TYPE.SHIELD,
			property: "max_shield_health"
		},
		{ 
			label: "Shield Radius",
			stat_type: STAT_TYPE.SHIELD,
			property: "shield_radius"
		},
		{ 
			label: "Repulsion Strength",
			stat_type: STAT_TYPE.SHIELD,
			property: "repulsion_strength"
		},
		{ 
			label: "Shield Recharge Rate",
			stat_type: STAT_TYPE.SHIELD,
			property: "recharge_rate_per_sec",
			units: "s"
		},
		{ 
			label: "Shield Recharge Amount",
			stat_type: STAT_TYPE.SHIELD,
			property: "recharge_amount"
		}
	];
	
	draw_stats_info(_stats, _start_x, _start_y);
}