/// @description Insert description here
// You can write your code in this editor

//Set z Rotation before rendering image
var opposite = (x - Player.x);
var adjacent = (y - Player.y);
var hypotenuse = sqrt(sqr(adjacent) + sqr(opposite));
hypotenuse = hypotenuse == 0 ? 1 : hypotenuse;

z_rotation = adjacent < 0 ? 180 - darcsin(opposite / hypotenuse) : darcsin(opposite / hypotenuse);

// Inherit the parent event
event_inherited();

