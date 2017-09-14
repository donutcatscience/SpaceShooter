/// @description Controls Menus

//displays start menu button
if (obj_gameController.gameState = 0){
	instance_create_layer(room_width/2,room_height/2,"Display", obj_pressStart);
}

