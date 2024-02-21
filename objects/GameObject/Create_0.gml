/// @description Insert description here
// You can write your code in this editor

sprite_z = sprite_height;
sprite_x = sprite_width / 2;

//Absolute z position
z = 0;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
vbuffer = vertex_create_buffer();

current_frame = -1;
current_sprite = sprite_index;

// Allows for rotation behaviour to be overridden
z_rotation = 0;

// Preset variable has_collision determines if the object should have collision
if (has_collision) {
	mesh = new colmesh_cube(x, y, -sprite_z / 2, sprite_x, sprite_x, sprite_height)
	LevelController.level_colmesh.addShape(mesh);

}
