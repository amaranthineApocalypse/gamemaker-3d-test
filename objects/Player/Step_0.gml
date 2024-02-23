/// @description Insert description here
// You can write your code in this editor

var MOVESPEED = 3;


look_dir -= ((window_mouse_get_x() - window_get_width() / 2) + drift_adjust) / 10;
look_pitch -= ((window_mouse_get_y() - window_get_height() / 2) + drift_adjust) / 10;
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

var old_z = z;
fall_speed += fall_speed > max_fall_speed ? 0 : 0.3;
if keyboard_check_pressed(vk_space) {
	fall_speed = -8;
}
z += fall_speed;


//Check collision - if the player is currently in a hitbox, they will be transported out of it
// If the player is travelling fast enough that they do not finish their movement for this frame
// inside a hitbox, they will go through hitboxes.
// It is possible to fix this, though might be resource costly.
avoid_mesh(collider, LevelController.level_colmesh)

// Reset the fall speed if the player is on the ground
if (old_z == z) {
	fall_speed = 0;	
}

// Create the CollisionBeam
if (mouse_check_button(1)) {
	instance_create_depth(x, y, z,
	CollisionBeam, {pitch: look_pitch, yaw: look_dir,
	start_x: x - dsin(look_dir) * MOVESPEED,
	start_y: y - dcos(look_dir) * MOVESPEED,
	start_z: z})
}
