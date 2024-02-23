/// @description Insert description here
// The Draw

var x1 = -sprite_x;
var z1 = 0 - sprite_z;
var x2 = sprite_x;
var z2 = 0;
// Check whether the instance's sprite has changed
if (current_frame != floor(image_index) || current_sprite != sprite_index){
	current_frame = floor(image_index);
	vertex_delete_buffer(vbuffer);
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

var matrix = matrix_build(
	x, y, z,
	0, 0, z_rotation,
	1, 1, 1);

matrix_set(matrix_world, matrix);
vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(sprite_index, image_index));
matrix_set(matrix_world, matrix_build_identity());

if (has_collision) {
	 var M = colmesh_matrix_build(x, y, z, 0, 0, 0, 1, 1, 1);
	dynamic.setMatrix(M, true);	
}
