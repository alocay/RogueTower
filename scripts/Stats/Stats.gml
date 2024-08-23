function Stats() constructor {
	base_tower = new TowerStats();
	ballistic_tower = new TowerStats();
	arc_tower = new TowerStats();
	shield = new ShieldStats();
	core = new CoreStats();
	xp = new ExpStats();
	
	initialize = function() {
		initialize_core_stats();
		initialize_exp_stats();
		initialize_shield_stats();
		initialize_base_tower_stats();
		initialize_ballistic_tower_stats();
		initialize_arc_tower_stats();
	}
	
	initialize_base_tower_stats = function() {
		base_tower.attacks_per_sec = 0;
		base_tower.damage = 0;
		base_tower.projectile_scale = 0;
		base_tower.projectile_speed = 0;
		base_tower.range = 0;
		base_tower.rotation_speed = 0;
		base_tower.accuracy = 0;
		base_tower.max_arc_distance = 0;
		base_tower.max_arcs = 0;
	}
	
	initialize_ballistic_tower_stats = function() {
		ballistic_tower.attacks_per_sec = 0.5;
		ballistic_tower.damage = 10;
		ballistic_tower.projectile_scale = 1;
		ballistic_tower.projectile_speed = 3;
		ballistic_tower.range = 700;
		ballistic_tower.rotation_speed = 0.05;
		ballistic_tower.accuracy = 0;
		ballistic_tower.max_arc_distance = 0;
		ballistic_tower.max_arcs = 0;
	}
	
	initialize_arc_tower_stats = function() {
		arc_tower.attacks_per_sec = 1;
		arc_tower.damage = 3;
		arc_tower.projectile_scale = 1;
		arc_tower.projectile_speed = 1;
		arc_tower.range = 200;
		arc_tower.rotation_speed = 0.75;
		arc_tower.accuracy = 0;
		arc_tower.max_arc_distance = 100;
		arc_tower.max_arcs = 1;
	}
	
	initialize_shield_stats = function() {
		shield.max_shield_health = 500;
		shield.shield_health = shield.max_shield_health;
		shield.shield_ring_width = 20;
		shield.shield_radius = 160;
		shield.repulsion_strength = 3;
		shield.recharge_amount = 1;
		shield.recharge_division = 1;
		shield.recharge_cooldown = 0;
		shield.recharge_rate_per_sec = 1;
	}
	
	initialize_core_stats = function() {
		core.hp = 100;
	}
	
	initialize_exp_stats = function() {
		xp.current_exp = 0;
		xp.level = 1;
		xp.exp_for_next_level = 10;
		xp.multiplier = 0;
	}
	
	/// @desc Gets the property for the given stat
	/// @param {Enum.STAT_TYPE} _stat_type The stat type
	/// @param {String} _property The property name's value to retrieve
	get_stat = function(_stat_type, _property) {
		var _struct = {};
		
		switch (_stat_type) {
			case STAT_TYPE.CORE:
				_struct = core;
				break;
			case STAT_TYPE.EXP:
				_struct = xp;
				break;
			case STAT_TYPE.SHIELD:
				_struct = shield;
				break;
			case STAT_TYPE.BALLISTIC_TOWER:
				_struct = ballistic_tower;
				break;
			case STAT_TYPE.ARC_TOWER:
				_struct = arc_tower;
				break;
			default:
				throw("Unknown stat type: " + string(_stat_type));
		}
		
		var _hash = variable_get_hash(_property);
		return struct_get_from_hash(_struct, _hash);
	}
	
	/// @desc Gets the correct tower stats by type
	/// @param {Enum.ACTOR_TYPE} _type The type of tower
	/// @returns {Struct.TowerStats} The appropriate TowerStats struct
	get_tower_stats = function(_type) {
		switch (_type) {
			case ACTOR_TYPE.TOWER_BALLISTIC:
				return ballistic_tower;
			case ACTOR_TYPE.TOWER_ARC:
				return arc_tower;
			case ACTOR_TYPE.NONE:
				return base_tower;
		}
		
		throw("Unknown tower type: " + string(_type));
	}
}