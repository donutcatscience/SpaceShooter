/// @description Gamestate Checks

//gameState 1 = game is running and makes sure game is not already in progress
if (gameState = 1) && (gameInProgress = 0){
	instance_create_layer(1,1,"Instances", obj_friendlySpawn);
	instance_create_layer(1,1,"Instances", obj_enemySpawn);
	gameInProgress = 1;
}

if (gameState = 1) && (gameInProgress = 1) && (lives = 0) {
	instance_destroy(all);
	instance_create_layer(0,0,layer, obj_gameController);
}