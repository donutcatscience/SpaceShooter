/// @description Keep 1 enemy on screen

//for loop so that there is almost always one enemy
for (var i = 0; i < 2; i += 1) {
	do {
		enemySpawnX = random_range(100,600); //sets random location inside room
		enemySpawnY = random_range(60,500);
		}
		until (place_free(enemySpawnX,enemySpawnY)); // loops until free space is found
		if !instance_exists(obj_enemy01){
			instance_create_layer(enemySpawnX,enemySpawnY,"Instances",obj_enemy01);}
		else alarm_set(0,120); //checks for existance of fruit/bombs every 2 seconds
}
