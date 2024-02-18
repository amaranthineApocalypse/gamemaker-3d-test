/// @description Insert description here
// You can write your code in this editor

sprite_z = sprite_height;
sprite_x = sprite_width / 2;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

vbuffer = vertex_create_buffer();

current_frame = -1;
current_sprite = sprite_index;
image_angle = image_angle - floor(image_angle / 360) * 360
z_rotation = image_angle;
x_offset = 0;
y_offset = 0;
