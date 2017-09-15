/// @description Gamestate Checks


//checks gamestate/progress/lives to reset the game if the player is out of lives
if (gameState = 1) && (gameInProgress = 0) && (gameRestart = 1) {
	instance_activate_layer("Instances");
	instance_destroy(all);
	instance_create_layer(0,0,"Display", obj_gameController);
}

//gameState 1 = game is running and makes sure game is not already in progress
if (gameState = 1) && (gameInProgress = 0) && (gameRestart = 0) {
	instance_create_layer(1,1,"Instances", obj_friendlySpawn);
	instance_create_layer(1,1,"Instances", obj_enemySpawn);
	gameInProgress = 1;
}

//checks gamestate/progress/lives to reset the game if the player is out of lives
if (lives = 0) && (gameRestart = 0) && (gameState = 1) {
	gameState = -1
	gameInProgress = 0;
	lives = 2
	instance_deactivate_layer("Instances")	
}

