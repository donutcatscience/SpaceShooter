/// @description Keep 1 enemy on screen

//for loop so that there is almost always one enemy
do {
	enemySpawnX = random_range(100,600); //sets random location inside room
	enemySpawnY = random_range(60,500); //with a tendency towards the top half of the screen
	}
until (place_free(enemySpawnX,enemySpawnY)); // loops until free space is found
if !instance_exists(obj_enemy01) { //if there are no enemies on screen, make one
		instance_create_layer(enemySpawnX,enemySpawnY,"Instances",obj_enemy01);
}
else alarm_set(0,30); //checks for existance of enemy every half second