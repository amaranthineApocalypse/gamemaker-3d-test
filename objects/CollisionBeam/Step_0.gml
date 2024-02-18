/// @description Insert description here
// You can write your code in this editor
var x_move = dcos(yaw) * move_speed;
var y_move = dsin(yaw) * move_speed;
var x_increase = move(1, 0, x_move);
var y_increase = move(0, -1, y_move);
x += x_move;
y -= y_move;



collider.x = x;
collider.y = y;
collider.z = z;

//Make the collider avoid the colmesh
if (collider.checkForCollision(0)){
	sprite_index = Beam_Spr7
}
collider.avoid(LevelController.level_colmesh);
//Copy the coordinates of the collider back to the player
x = collider.x;
y = collider.y;
z = collider.z;
if (abs(x) - start_x > max_distance || abs(y) - start_y > max_distance) {
	instance_destroy();
}
