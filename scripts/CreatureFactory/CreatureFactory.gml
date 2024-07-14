function CreatureFactory() constructor {
	creatures = [
		{
			type: ACTOR_TYPE.CREATURE_CLAW,
			chance: 0.6
		},
		{
			type: ACTOR_TYPE.CREATURE_BALLISTIC,
			chance: 0.4
		},
		{
			type: ACTOR_TYPE.CREATURE_ARTILLERY,
			chance: 0.2
		}
	];
	
	/// @desc Sorts the creatures array by chance from lowest to highest
	sort_creatures = function() {
		array_sort(creatures, function (_c1, _c2) {
			if (_c1.chance < _c2.chance) {
				return -1;
			}
			
			if (_c1.chance > _c2.chance) {
				return 1;
			}
			
			return 0;
		});
	}
	
	/// @desc Gets a random creature weighted by its chance
	/// @returns {struct} The creature struct
	get_weighted_random_creature = function() {
		var _roll = random(1);
		var _last_index = array_length(creatures) - 1;
		var _creature = get_creature_by_type(creatures[_last_index].type);
		
		for (var _i = 0; _i < array_length(creatures); _i++) {
			if (_roll <= creatures[_i].chance) {
				_creature = get_creature_by_type(creatures[_i].type);
				break;
			}
		}
		
		return _creature;
	}
	
	/// @desc Gets the creature struct by type
	/// @param {enum} _type The type of creature
	/// @returns {struct.TargetingActor} The creature struct
	get_creature_by_type = function(_type) {
		switch(_type) {
			case ACTOR_TYPE.CREATURE_CLAW:
				return new ClawEnemy();
			case ACTOR_TYPE.CREATURE_BALLISTIC:
				return new BallisticEnemy();
			case ACTOR_TYPE.CREATURE_ARTILLERY:
				return new ArtilleryEnemy();
			default:
				return {};
		}
	}
}