/// @description Increased Difficulty spawn

if (instance_exists(obj_player)) { //make sure player exists	
	if (stageDuration = (room_speed * 2)) { //lower number = faster spawn
		gameStage++; //number of enemy spawned per +stage
		stageDuration = 0; //reset spawn timer
		alarm_set(1,1);
	}
	else stageDuration++; //increase timer to hit next stage
}