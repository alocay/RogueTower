/// @desc Property bag for projectile object and struct
/// @param {struct} _struct The projectile struct
/// @param {Asset.GMObject} _object The projectile object
function ProjectileData(_struct, _object) constructor {
	projectile_struct = _struct;
	projectile_object = _object;
	
	/// @desc Getter for the struct
	/// @returns {struct} The projectile struct
	struct = function() {
		return projectile_struct;
	}

	/// @desc Getter for the object
	/// @returns {asset.gmobject} The projectile object
	object = function() {
		return projectile_object;
	}
}