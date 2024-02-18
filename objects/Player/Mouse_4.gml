/// @description Insert description here
// You can write your code in this editor

// Create the CollisionBeam
if (mouse_check_button(1)) {
	instance_create_depth(x, y, z,
	CollisionBeam, {pitch: look_pitch, yaw: look_dir,
	start_x: x - (dcos(look_dir) * 10) ,
	start_y: y + (dsin(look_dir) * 10) ,
	start_z: z - look_pitch })
}
