/// @description Check for player

//spawns main player if there are still lives avaiable
if (lives > 0) && (!instance_exists(obj_player)) {
	instance_create_layer((room_width/2),((room_height/2) + 300), "Instances", obj_player);
}