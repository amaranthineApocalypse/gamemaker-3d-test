// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function avoid_mesh
/// @param {colMesh} level_mesh The mesh being avoided
/// @param {colmesh collider} collider The calling instance's collider
/// Check collision between the calling object's collider and the given colMesh
function avoid_mesh(collider, level_mesh){
	//Make sure the collider has the same coordinates as the player
	collider.x = x;
	collider.y = y;
	collider.z = z;

	//Make the collider avoid the colmesh
	//If the collider overlaps with the mesh, the instance is forced out of it
	collider.avoid(LevelController.level_colmesh);

	//Copy the coordinates of the collider back to the player
	x = collider.x;
	y = collider.y;
	z = collider.z;
}