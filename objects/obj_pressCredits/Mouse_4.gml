/// @description 

//destroys left over assets
instance_destroy(obj_pressCredits);
instance_destroy(obj_gameOver);
instance_destroy(obj_playerScore);
instance_destroy(obj_scoreValue);
instance_destroy(obj_pressEnter);
//create credits
instance_create_layer(0,0,"display",obj_credits);
instance_destroy();