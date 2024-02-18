/// @description Insert description here
// You can write your code in this editor

z = -32;
look_dir = 0;
look_pitch = 0;

function move(_x, _y, _speed) {
	movement = 0;
	for (var i = 1; i <= _speed; i++) {
		if (place_meeting(x + i * _x, y + i * _y, GameObject)) {
			break;
		}
		movement++;
	}
	return movement;
}
