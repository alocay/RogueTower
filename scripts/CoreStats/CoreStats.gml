function CoreStats() constructor {
	hp = 100;
	
	increase_hp = function(_amount) {
		hp += _amount;
	}

	increase_hp_pct = function(_pct) {
		hp += hp * _pct;
	}
}