/// @desc A small bullet projectile
/// @param {Id.Instance} _obj The projectile object instance
function Bullet(_obj, _owner) : Projectile(_obj) constructor {
	owner = _owner;
	type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_obj = _obj;
	
	fire = function(_direction) {
		direction = _direction;
		speed = global.stats.base_tower.projectile_speed + global.stats.ballistic_tower.projectile_speed;
		last_speed = speed;
		image_angle = direction;
		image_xscale = global.stats.base_tower.projectile_scale 
			+ global.stats.ballistic_tower.projectile_scale;
		image_yscale = global.stats.base_tower.projectile_scale 
			+ global.stats.ballistic_tower.projectile_scale; 
		damage = global.stats.base_tower.damage + global.stats.ballistic_tower.damage;
	}
	
	get_max_pierces = function() {
		return global.stats.base_tower.max_pierces + global.stats.ballistic_tower.max_pierces;
	}
	
	get_damage = function() {
		return global.stats.base_tower.damage + global.stats.ballistic_tower.damage;
	}
	
	get_enemies_hit = function() {
		var _hits = [];
		var _is_bullet_from_enemy = object_is_ancestor(owner.object_index, obj_enemy_parent);
		with(obj_enemy_parent) {
			var _is_colliding_with_enemy = place_meeting(x, y, other.projectile_obj.id);
			if (_is_colliding_with_enemy && !_is_bullet_from_enemy) {
				array_push(_hits, self);
			}
		}
		
		return _hits;
	}
}