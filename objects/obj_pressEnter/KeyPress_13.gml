/// @description Starts the game
audio_stop_all();
lives = 1; //sets built in variable for lives
score = 0; //sets score

//destroys left over assets
instance_destroy(obj_pressCredits);
instance_destroy(obj_gameOver);
instance_destroy(obj_playerScore);
instance_destroy(obj_scoreValue);
//new game assets
instance_create_layer(40,40,"display",obj_playerScore);
instance_create_layer(0,0,"display",obj_scoreValue);
instance_create_layer(1,1,"Instances", obj_friendlySpawn);
instance_create_layer(1,1,"Instances", obj_enemySpawn);
//new sound
audio_play_sound(mus_background,1,true);

instance_destroy();