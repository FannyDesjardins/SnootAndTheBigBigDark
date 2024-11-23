// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){

	//Movement
	hsp = lengthdir_x(inputMagnitude * ply_speed, inputDirection);
	vsp = lengthdir_y(inputMagnitude * ply_speed, inputDirection);

	PlayerCollision();


}

