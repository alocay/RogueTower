/// @desc Factory for Projectile structs
function ProjectileFactory() constructor {
	/// @desc Builds a Projectile struct based on the tower type
	/// @param {asset.gmobject} _owner The Projectile's owner
	/// @returns {struct.Projectile} A Projectitle struct
	get_projectile_by_type = function (_owner) {
		switch(_owner.projectile_type) {
			case PROJECTILE_TYPE.SMALL_BULLET:
				return new Projectile(_owner);
			case PROJECTILE_TYPE.ARC:
				return new Arc(_owner);
			default:
				throw("Unknown projectile type: " + string(_owner.projectile_type));
		}
	}
}