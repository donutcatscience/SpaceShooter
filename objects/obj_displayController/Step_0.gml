/// @description checks lives and ends game

if (lives = 0){
	instance_destroy(obj_friendlySpawn);
	instance_destroy(obj_enemySpawn);
	instance_destroy(obj_player);
	instance_destroy(obj_enemy01);
	
	instance_create_layer(0,0,"Display",obj_endGame);
}
