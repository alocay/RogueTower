/// @desc Factory for Projectile structs
function TowerProjectileFactory() constructor {
	/// @desc Builds a Projectile struct based on the tower type
	/// @param {TOWER_TYPE} _type The type of tower
	/// @param {asset.gmobject} _owner The Projectile's owner
	/// @returns {ProjectileData} A ProjectileData struct
	get_projectile_by_type = function (_owner) {
		switch(_owner.type) {
			case TOWER_TYPES.BASIC_BALLISTIC:
				return new ProjectileData(new Projectile(_owner), obj_tower_projectile);
				break;
			default:
				return [];
				break;
		}
	}
}