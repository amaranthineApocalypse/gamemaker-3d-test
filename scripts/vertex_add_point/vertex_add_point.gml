// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function vertex_add_point(vbuffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha);
/// @param {Id.VertexBuffer} vbuffer Vertex Buffer
/// @param {Real} xx Vertex X coord
/// @param {Real} yy Vertex Y coord
/// @param {Real} zz Vertex Z coord
/// @param {Real} nx Normal vector X
/// @param {Real} ny Normal vector Y
/// @param {Real} nz Normal vector Z
/// @param {Real} utex Texture X coordinate
/// @param {Real} vtex Texture Y coordinate
/// @param {Constant.Color} color Vertex color
/// @param {Real} alpha Vertex transparency 0 transparent 1 opaque
function vertex_add_point(vbuffer, xx, yy, zz, nx, ny, nz, utex, vtex, color, alpha){
	vertex_position_3d(vbuffer, xx, yy, zz);
	vertex_normal(vbuffer, nx, ny, nz);
	vertex_texcoord(vbuffer, utex, vtex);
	vertex_color(vbuffer, color, alpha);
}