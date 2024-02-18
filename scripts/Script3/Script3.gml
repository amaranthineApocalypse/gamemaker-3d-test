// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move(_x, _y, _speed) {
	_dir = sign(_speed);
	movement = 0;
	for (var i = 1; i <= abs(_speed); i++) {
		if (collide((i * _x * _dir), (i * _y * _dir), GameObject)) {
			break;
		}
		movement++;
	}

	//return movement * sign(_speed);
		return _speed;

}

function collide(_x, _y, _other) {
	if place_meeting(x + _x, y + _y, _other) {
		return true;
	}
	return false;
}