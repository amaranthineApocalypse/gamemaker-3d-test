/// @description Insert description here
// You can write your code in this editor

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

vbuffer = vertex_create_buffer();
vertex_begin(vbuffer, vertex_format);

var x1 = 400;
var y1 = 400;
var x2 = 600;
var y2 = 600;

vertex_add_point(vbuffer, x1, y1, -100,	0, 0, 1,	0, 0,	c_aqua, 1);
vertex_add_point(vbuffer, x2, y1, -100,	0, 0, 1,	0, 0,	c_aqua, 1);
vertex_add_point(vbuffer, x2, y2, -100,	0, 0, 1,	0, 0,	c_aqua, 1);

vertex_add_point(vbuffer, x2, y2, -100,	0, 0, 1,	0, 0,	c_aqua, 1);
vertex_add_point(vbuffer, x1, y2, -100,	0, 0, 1,	0, 0,	c_aqua, 1);
vertex_add_point(vbuffer, x1, y1, -100,	0, 0, 1,	0, 0,	c_aqua, 1);

vertex_end(vbuffer);

instance_create_depth(0, 0, 0, Player);