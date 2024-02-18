/// @description Insert description here
// You can write your code in this editor

z = -32;
look_dir = 0;
look_pitch = 0;

function move(_x, _y, _speed) {
	_dir = sign(_speed);
	movement = 0;
	for (var i = 1; i <= abs(_speed); i++) {
		if (place_meeting(x + (i * _x * _dir), y + (i * _y * _dir), GameObject)) {
			show_debug_message(_dir)
			show_debug_message(x)
			show_debug_message(x + (i * _x * _dir))
			show_debug_message(y)
			show_debug_message(y + (i * _y * _dir));
			show_debug_message("----------------")

			break;
		}
		movement++;
	}

	return movement * sign(_speed);

}
