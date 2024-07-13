/// @desc Factory for Projectile structs
function ProjectileFactory() constructor {
	/// @desc Builds a Projectile struct based on the tower type
	/// @param {asset.gmobject} _owner The Projectile's owner
	/// @returns {struct.ProjectileData} A ProjectileData struct
	get_projectile_by_type = function (_owner) {
		switch(_owner.projectile_type) {
			case PROJECTILE_TYPE.SMALL_BULLET:
				return new ProjectileData(new Projectile(_owner), obj_tower_projectile);
			default:
				throw("Unknown projectile type: " + string(_owner.projectile_type));
		}
	}
}