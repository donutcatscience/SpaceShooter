/// @description 

lives = 2;

instance_destroy(obj_pressCredits);
instance_destroy(obj_gameOver);
instance_destroy(obj_playerScore);
instance_destroy(obj_scoreValue);
instance_destroy(obj_pressEnter);

instance_create_layer(0,0,"display",obj_credits);
instance_destroy();