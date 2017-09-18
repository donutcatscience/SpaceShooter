/// @description control shield
if instance_exists(obj_player){
	if (currentShieldEnergy > 0) {
		--currentShieldEnergy;
	}
	else {
		obj_player.shieldOn = 0;
		obj_player.currentShieldEnergy = 0;
		instance_destroy();
	}
	self.x = obj_player.x;
	self.y = obj_player.y - 50;
}
else instance_destroy();
