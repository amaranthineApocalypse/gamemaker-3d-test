/// @description Insert description here
// You can write your code in this editor

// Currently only moves horizontally
var x_move = dcos(yaw) * move_speed;
var y_move = dsin(yaw) * move_speed;
x += x_move;
y -= y_move;


avoid_mesh(collider, LevelController.level_colmesh)


// Destroy if max distance reached
if (abs(x) - start_x > max_distance || abs(y) - start_y > max_distance) {
	instance_destroy();
}
