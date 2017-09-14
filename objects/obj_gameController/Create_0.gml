/// @description Game controller manages game states and UI/UX

//initiate variables
gameState = 0; // -1 restart game, 0 new game, 1 game running
gameInProgress = 0; //helps game display track if a game is currently being played
playerShipScale = .6; //reduces player ship size with code
enemyShipScale = .4; //reduces enemy ship size with code
diagonalPenalty = 1.2; //penalty for moving diagonaly so that it's not an advantage 
						//necessary because of the way I have movement coded.

//Lets get this music going
audio_play_sound(mus_background, 1, true);

//display menus
instance_create_layer(1,1, "Display",obj_displayController);

