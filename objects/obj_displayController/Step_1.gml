/// @description Controls Menus

//displays GUI
if (obj_gameController.gameState = -2) { //credits
	instance_destroy(obj_pressEnter);
	instance_create_layer(0,0,"display",obj_credits);
}

if (obj_gameController.gameState = -1){ //game over
	instance_destroy(obj_playerScore);
	instance_destroy(obj_scoreValue);
	instance_create_layer(room_width/2,room_height/2,"Display", obj_pressEnter);
	instance_create_layer(room_width/2,((room_height/2) - 200),"Display", obj_gameOver);
	instance_create_layer(room_width/2,((room_height/2) + 150),"Display", obj_playerScore);
	instance_create_layer(room_width/2,((room_height/2) + 200),"Display", obj_scoreValue);
	gameRestart = 1;
}

if (obj_gameController.gameState = 0){ //active game
	instance_create_layer(room_width/2,room_height/2,"Display", obj_pressEnter);
	instance_create_layer(room_width/2,((room_height/2) + 100),"Display", obj_pressCredits);
}

if (obj_gameController.gameState = 1) { //active game
	instance_destroy(obj_pressCredits);
	instance_destroy(obj_gameOver);
	instance_destroy(obj_playerScore);
	instance_destroy(obj_scoreValue);
	instance_destroy(obj_pressEnter);
	instance_destroy(obj_pressCredits);
	//instance_create_layer(0,0,"display",obj_playerLives);
	instance_create_layer(40,40,"display",obj_playerScore);
	instance_create_layer(0,0,"display",obj_scoreValue);
}

     