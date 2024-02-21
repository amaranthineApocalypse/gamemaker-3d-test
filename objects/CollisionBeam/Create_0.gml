/// @description Insert description here
// Object to help with hitbox troubleshooting



// Inherit the parent event
event_inherited();
x = start_x;
y = start_y;


z = start_z;
move_speed = 10;
max_distance = 500;

collider = new colmesh_collider_capsule(x, y, z, 1, 1, 1, 3, 6);
