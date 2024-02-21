/// @description Insert description here
// You can write your code in this editor

z = -32;
look_dir = 0;
look_pitch = 0;

// Haven't figured out what theis value is, but it seems to be best at 0
up = 0;
// Create own colmesh - This will collide with the level mesh.
collider = new colmesh_collider_capsule(
	x, y, z,
	up, up, up,
	32, 64, 45);

// Fields for use while developing
drift_adjust = 0.5;
