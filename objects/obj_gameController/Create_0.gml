/// @description Game controller manages game states and UI/UX

//initiate variables
gameState = 0;
gameInProgress = 0;
playerShipScale = .6;
enemyShipScale = .4;
diagonalPenalty = 1.2;

//Lets get this music going
audio_play_sound(mus_background, 1, true);

//display menus
instance_create_layer(1,1, "Display",obj_displayController);

