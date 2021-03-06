/// @description loads end game display and loops back into game start

//destroy old score display in top left corner
instance_destroy(obj_playerScore);
instance_destroy(obj_scoreValue);

//display UI buttons to restart game
instance_create_layer(room_width/2,room_height/2,"Display", obj_pressEnter);
instance_create_layer(room_width/2,((room_height/2) - 300),"Display", obj_gameOver);
instance_create_layer(room_width/2,((room_height/2) + 150),"Display", obj_playerScore);
instance_create_layer(room_width/2,((room_height/2) + 200),"Display", obj_scoreValue);
instance_create_layer(room_width/2,((room_height/2) + 250),"Display", obj_pressCredits);

//destroys itself
instance_destroy();
