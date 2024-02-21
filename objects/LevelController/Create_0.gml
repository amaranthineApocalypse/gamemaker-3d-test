/// @description Insert description here
// Container for the collision mesh.

// Initialise colMesh
// Instances should add their own shapes to the mesh
level_colmesh = new colmesh();
// I believe a larger number here means better performance.
var regionSize = 200;
level_colmesh.subdivide(regionSize);
var tiles = layer_tilemap_get_id("Tiles_1")
var length = (tilemap_get_width(tiles) * tilemap_get_tile_width(tiles));
var breadth = (tilemap_get_height(tiles) * tilemap_get_tile_height(tiles));
var t_depth = layer_get_depth("Tiles_1")
var tile_map = new colmesh_cube(
	tilemap_get_x(tiles) + (length / 2),
	tilemap_get_y(tiles) + (breadth / 2),
	t_depth, length, breadth, 1);
level_colmesh.addShape(tile_map);
