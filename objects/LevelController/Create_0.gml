/// @description Insert description here
// Container for the collision mesh.

// Initialise colMesh
// Instances should add their own shapes to the mesh
level_colmesh = new colmesh();
// I believe a larger number here means better performance.
var regionSize = 200;
level_colmesh.subdivide(regionSize);

