/// @description enemy collision

//play explsion sound
audio_play_sound(sfx_enemyDeath,1,false);

//adjust score
score +=200;

//explosion animation and asset delete
with (other) { //ensures bullet is acting on specific object it made contact with
	instance_create_layer(other.x,other.y,"Instances",obj_enemyExplode01); //overlay explosion correctly
	instance_destroy();
}

//destroys self
instance_destroy();

