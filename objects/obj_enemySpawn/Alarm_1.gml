/// @description Spawn Extra Enemies

//spawns 4 extra enemies
for (var i = 0; i < 4; i += 1) {
	do {
		enemySpawnX = random_range(100,600); //sets random location inside room
		enemySpawnY = random_range(60,500); //with a tendency towards the top half of the screen
		}
		until (place_free(enemySpawnX,enemySpawnY)); // loops until free space is found
			instance_create_layer(enemySpawnX,enemySpawnY,"Instances",obj_enemy01);
}
alarm_set(1,120); //reset alarm for 2 seconds after enemies are spawned