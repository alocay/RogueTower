function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
	
	static add = function(_vec2) {
		x += _vec2.x;
		y += _vec2.y;
		return self;
	}
	
	static substract = function(_vec2) {
		x -= _vec2.x;
		y -= _vec2.y;
		return self;
	}
	
	static normalize = function() {
		var _length = self.length();

		if (length <= 0) {
			return self;
		}
		
		x /= _length;
		y /= _length;
		
		return self;
	}
	
	static length = function() {
		return sqrt(power(x, 2) + power(y, 2));
	}
	
	static dot = function() {
	}
	
	static cross = function() {
	}
}