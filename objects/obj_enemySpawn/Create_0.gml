/// @description Controlls spawn of friendly units

//initiate variables
enemySpawnX = 0; //used to make sure fruit isn't spawning on top of bombs in spawning for loops
enemySpawnY = 0;
randomObject = 0; //used in level 2 & 3 spawners to generate random fruit/bombs


// alarm 0 keeps 1 enemy spawned at all times
alarm_set(0,30);


