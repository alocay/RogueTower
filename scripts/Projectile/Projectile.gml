/// @desc The Projectile struct
/// @param {Id.Instance} _obj The projectiles owner
function Projectile(_obj) constructor {
	owner = noone;
	projectile_obj = _obj;
	direction = 0;
	projectile_speed = 0;
	speed = 0;
	last_speed = speed;
	damage = 0;
	type = PROJECTILE_TYPE.NONE;
	
	
	/// @desc Gets the delta for the next x and y positions
	/// @returns {Struct} The delta of the next x and y positions
	move_delta = function() {
		return { 
			x_delta: speed * cos(degtorad(direction)),
			y_delta: speed * sin(degtorad(direction))
		};
	}
	
	shield_hit = function () {
		with (obj_shield) {
			return place_meeting(other.projectile_obj.x, other.projectile_obj.y, self) 
				&& !object_is_ancestor(owner.object_index, obj_tower_parent)
				&& self.shield_health > 0;
		}
	}
}