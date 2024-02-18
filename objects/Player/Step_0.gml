/// @description Insert description here
// You can write your code in this editor

MOVESPEED = 3;

look_dir -= ((window_mouse_get_x() - window_get_width() / 2) + 0.5) / 10;
look_pitch -= ((window_mouse_get_y() - window_get_height() / 2) + 0.5) / 10;
look_pitch = clamp(look_pitch, -80, 80);

window_mouse_set(window_get_width() / 2, window_get_height() / 2);

if (keyboard_check_direct(vk_escape)){
	game_end(1);
}

if keyboard_check(vk_shift){
	MOVESPEED = 6;
}

if (keyboard_check(ord("W"))){
	x += move(1, 0, dcos(look_dir) * MOVESPEED);
	y -= move(0, -1, dsin(look_dir) * MOVESPEED);
}

if (keyboard_check(ord("A"))){
	x -= move(-1, 0, dsin(look_dir) * MOVESPEED);
	y -= move(0, -1, dcos(look_dir) * MOVESPEED);
}

if (keyboard_check(ord("S"))){
	x -= move(-1, 0, dcos(look_dir) * MOVESPEED);
	y += move(0, 1, dsin(look_dir) * MOVESPEED);
}

if (keyboard_check(ord("D"))){
	x += move(1, 0, dsin(look_dir) * MOVESPEED);
	y += move(0, 1, dcos(look_dir) * MOVESPEED);
}

//Make sure the collider has the same coordinates as the player
collider.x = x;
collider.y = y;
collider.z = z;

//Make the collider avoid the colmesh
collider.avoid(LevelController.level_colmesh);

//Copy the coordinates of the collider back to the player
x = collider.x;
y = collider.y;
z = collider.z;


if (mouse_check_button(1)) {
	instance_create_depth(x, y, z,
CollisionBeam, {pitch: look_pitch, yaw: look_dir,
	start_x: x - (dcos(look_dir) * 10) ,
	start_y: y + (dsin(look_dir) * 10) ,
	start_z: z - look_pitch })
}

//if (place_meeting(x, y, GameObject)){
//	show_debug_message("Colliding")

//}
