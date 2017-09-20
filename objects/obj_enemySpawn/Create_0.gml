/// @description Controlls spawn of friendly units

//initiate variables
gameTimer = 0;
stageDuration = 0;
gameStage = 1;

enemySpawnX = 0; //used to make sure ships aren't spawning on top of each other
enemySpawnY = 0;

// alarm 0 keeps 1 enemy spawned at all times
alarm_set(0,30);



