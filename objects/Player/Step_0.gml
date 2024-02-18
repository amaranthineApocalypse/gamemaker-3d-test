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
	x += dcos(look_dir) * MOVESPEED;
	y -= dsin(look_dir) * MOVESPEED;
}

if (keyboard_check(ord("A"))){
	x -= dsin(look_dir) * MOVESPEED;
	y -= dcos(look_dir) * MOVESPEED;
}

if (keyboard_check(ord("S"))){
	x -= dcos(look_dir) * MOVESPEED;
	y += dsin(look_dir) * MOVESPEED;
}

if (keyboard_check(ord("D"))){
	x += dsin(look_dir) * MOVESPEED;
	y += dcos(look_dir) * MOVESPEED;
}

//Check collision
avoid_mesh(collider, LevelController.level_colmesh)


// Create the CollisionBeam
if (mouse_check_button(1)) {
	instance_create_depth(x, y, z,
	CollisionBeam, {pitch: look_pitch, yaw: look_dir,
	start_x: x - (dcos(look_dir) * 10) ,
	start_y: y + (dsin(look_dir) * 10) ,
	start_z: z - look_pitch })
}
