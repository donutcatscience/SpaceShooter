/// @description Controls Menus

//displays GUI
if (obj_gameController.gameState = -2) { //credits
	instance_create_layer(0,0,"display",obj_credits);
}

if (obj_gameController.gameState = 0){ //active game
	instance_create_layer(room_width/2,room_height/2,"Display", obj_pressStart);
	instance_create_layer(room_width/3,((room_height/2) + 40),"Display", obj_pressCredits);
}

if (obj_gameController.gameState = 1) { //active game
	instance_create_layer(0,0,"display",obj_playerLives);
	instance_create_layer(0,0,"display",obj_playerScore);
}

     