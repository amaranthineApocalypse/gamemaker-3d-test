/// @description Insert description here
// You can write your code in this editor


matrix_set(matrix_world, matrix_build(x, y, -64, 0, 0, 0, 500, 500, 500));
vertex_submit(model, pr_trianglelist, -1);
matrix_set(matrix_world, matrix_build_identity());