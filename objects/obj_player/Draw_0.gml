/// @description Controls Sprite Animation

//manage left/right animation change
if (moveX < 0) { //left
	--frameStart; //moves the animation frame left
	if (frameStart <= 1) frameStart = 1; //keeps animation from going past left most frame
}
else if (moveX > 0){ //right
	++frameStart; 
	if (frameStart >= 10) frameStart = 10;
}
else frameStart = 6; //reset back to start animation

//checks movement of ship and draws animation accordingly
draw_sprite_ext(sprite_index, frameStart, x,y,obj_gameController.playerShipScale, 
				obj_gameController.playerShipScale,1,c_white,1);
	