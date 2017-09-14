/// @description enemy collision

//play explsion sound
audio_play_sound(sfx_enemyDeath,1,false);

//adjust score

//explosion animation and asset delete
instance_create_layer(obj_enemy01.x,obj_enemy01.y,"Instances",obj_enemyExplode01);
instance_destroy(obj_enemy01);
instance_destroy();

