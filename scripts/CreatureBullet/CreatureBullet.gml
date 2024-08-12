function CreatureBullet(_owner) : Projectile(_owner) constructor {
	type = PROJECTILE_TYPE.SMALL_BULLET;
	projectile_speed = 5;
	speed = projectile_speed;
	last_speed = speed;
	damage = 5;
	scale = 1;
	
	fire = function(_direction)
	{
		direction = _direction;
		speed = projectile_speed;
		last_speed = speed;
		image_angle = direction;
		image_xscale = scale;
		image_yscale = scale;
	
		var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		_new_smoke.set_smoke();
		_new_smoke.owner = self;
	}
	
	shield_hit = function() {
		var _colliding_projectile = instance_place(x, y, obj_shield);
		if (place_meeting(x, y, obj_shield) 
			&& !object_is_ancestor(self.owner.object_index, obj_tower_parent) 
			&& obj_shield.shield_health > 0) {			
			obj_shield.take_damage(damage);
			instance_destroy();
			return true;
		}
		
		return false;
	}
}