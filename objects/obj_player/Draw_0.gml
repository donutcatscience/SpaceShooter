/// @description Controls Sprite Animation

//manage left/right animation change
if (moveX < 0) { 
	--frameStart; //left
	if (frameStart <= 1) frameStart = 1;
}
else if (moveX > 0){	
	++frameStart; //right
	if (frameStart >= 10) frameStart = 10;
}
else frameStart = 6; //reset back to start animation

//checks movement of ship and draws animation accordingly
draw_sprite_ext(sprite_index, frameStart, x,y,obj_gameController.shipScale, 
				obj_gameController.shipScale,1,c_white,1);

//play sound and fire gun
if (fireWeapon = 1){
	audio_play_sound(sfx_bulletGun,1,false);
	instance_create_layer(x,y,"Instances",obj_playerBullet);
	fireWeapon = 0;
}		