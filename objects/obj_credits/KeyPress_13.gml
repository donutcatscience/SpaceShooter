/// @description Returns to Start Game

//
instance_create_layer(room_width/2,room_height/2,"Display", obj_pressEnter);
instance_create_layer(room_width/2,((room_height/2) + 100),"Display", obj_pressCredits); 
instance_destroy();