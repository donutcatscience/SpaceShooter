/// @description Controls Sprite Animation

//manage left/right animation change
if (moveX < 0) { 
	--frameStart; //left
	if (frameStart <= 1) frameStart = 1;
}
else if (moveX > 0){	
	++frameStart; //right
	if (frameStart >= 8) frameStart = 8;
}
else frameStart = 5; //reset back to start animation

//checks movement of ship and draws animation accordingly
draw_sprite_ext(sprite_index, frameStart, x,y,obj_gameController.enemyShipScale, 
				obj_gameController.enemyShipScale,1,c_white,1);
		