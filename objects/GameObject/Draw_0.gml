/// @description Insert description here
// You can write your code in this editor



var x1 = -sprite_x;
var z1 = -sprite_z;
var x2 = sprite_x;
var z2 = 0;

if (current_frame != floor(image_index) || current_sprite != sprite_index){
	current_frame = floor(image_index);
	vbuffer = vertex_create_buffer();
	vertex_begin(vbuffer, vertex_format);
	var uvs = sprite_get_uvs(sprite_index, image_index);
	vertex_add_point(vbuffer, x1, 0, z1,	0, 1, 0,	uvs[2], uvs[1],	-1, 1);
	vertex_add_point(vbuffer, x2, 0, z1,	0, 1, 0,	uvs[0], uvs[1],	-1, 1);
	vertex_add_point(vbuffer, x2, 0, z2,	0, 1, 0,	uvs[0], uvs[3], -1, 1);

	vertex_add_point(vbuffer, x2, 0, z2,	0, 1, 0,	uvs[0], uvs[3],	-1, 1);
	vertex_add_point(vbuffer, x1, 0, z2,	0, 1, 0,	uvs[2], uvs[3],	-1, 1);
	vertex_add_point(vbuffer, x1, 0, z1,	0, 1, 0,	uvs[2], uvs[1],	-1, 1);

	vertex_end(vbuffer);
}


var opposite = (x - Player.x);
var adjacent = (y - Player.y);
var hypotenuse = sqrt(sqr(adjacent) + sqr(opposite));

var z_rotation = adjacent < 0 ? 180 - darcsin(opposite / hypotenuse) : darcsin(opposite / hypotenuse);

var matrix = matrix_build(x, y, 0, 0, 0, z_rotation, 1, 1, 1);

matrix_set(matrix_world, matrix);

vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(sprite_index, image_index));

matrix_set(matrix_world, matrix_build_identity());