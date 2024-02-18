/// @description Insert description here
// You can write your code in this editor

draw_clear(c_blue);

#region camera position init
var camera = camera_get_active();

var xfrom = Player.x;
var yfrom = Player.y;
var zfrom = Player.z;

var xto = xfrom + dcos(Player.look_dir);
var yto = yfrom - dsin(Player.look_dir);
var zto = zfrom - dsin(Player.look_pitch);

camera_set_view_mat(
	camera, 
	matrix_build_lookat(
		//Position camera is looking from
		xfrom, yfrom, zfrom,
		//Position camera is looking at
		xto, yto, zto,
		//Offset of camera from lookposition (AKA, how to have your camera be where your characters head is, instead of the torso)
		0, 0, 1
	)
);
	
camera_set_proj_mat(
	camera, 
	matrix_build_projection_perspective_fov(
		//Vertical FOV
		60, 
		//Aspect Ratio
		window_get_width()/window_get_height(), 
		//Minimum and maximum render distance (0 behaves weirdly)
		1, 32000
	)
);

camera_apply(camera);
#endregion
