/// @description player collision

//play explsion sound
audio_play_sound(sfx_playerDeath,1,false);

//explosion animation and asset delete
instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_playerExplode); //overlay explosion correctly
instance_destroy(obj_player);
--lives;

//destroys itself
instance_destroy();

