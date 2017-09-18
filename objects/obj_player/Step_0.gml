/// @description Looks for actions

//check for key press, arrow keys supported, but not prefered
inputLeft = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0); 
inputRight= max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
inputUp = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
inputDown = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
inputBoost = keyboard_check(vk_shift);
inputFire = mouse_check_button_pressed(mb_left);
inputShield = keyboard_check(vk_tab);

//check to see if shield is on and has energy
if ((inputShield) && (shieldEnergy > 0)) 
	instance_create_layer(obj_player.x, (obj_player.y + 15), "Instance", obj_playerShield); 


//check to see if weapon fireing
if (inputFire) { //add ammo check
	fireWeapon = 1;
	if (fireWeapon = 1){
		audio_play_sound(sfx_bulletGun,1,false);
		var xx, yy;
		xx = mouse_x; //save location of mouse click
		yy = mouse_y;
		with (instance_create_layer(x,y,"Instances",obj_playerBullet))
			{
			direction = point_direction(x, y, xx, yy); //fires at mouse click location
	   }
	   fireWeapon = 0; //resets to prevent unlimited fire
	}	
}

//changes ship speed if shift key is down
if (inputBoost){
	playerShipSpeed = playerBoostSpeed;
}
else playerShipSpeed = playerNormalSpeed;

//resets movement every step to prevent creep
moveX = 0;
moveY = 0;

//gets movement X and Y values to make sure there are no issues with simultanious key presses
moveX = (inputRight - inputLeft) * playerShipSpeed
moveY = (inputDown - inputUp) * playerShipSpeed

//tests to see if player is moving diagonaly and incures a penalty to prevent faster movement
if ((abs(moveX) > 0) && ((abs(moveY) > 0))) { 
	playerShipSpeed = playerShipSpeed / obj_gameController.diagonalPenalty ;
	moveX = (inputRight - inputLeft) * playerShipSpeed
	moveY = (inputDown - inputUp) * playerShipSpeed
}


//horizontal collision check 
if (moveX != 0){
	if (place_meeting((x + moveX), y, obj_playerWall)){
		repeat (abs(moveX)){ 
			if (!place_meeting((x + sign(moveX)), y, obj_playerWall)){
				x += sign(moveX); //reduces movement down to one pixel
			}
			else {
				break;
			}
		}
		moveX = 0;
	}
}

//verticle collision check 
if (moveY != 0){
	if (place_meeting(x, (y + moveY) , obj_playerWall)){
		repeat (abs(moveY)){
			if (!place_meeting(x, (y + sign(moveY)), obj_playerWall)){
				y += sign(moveY);
			}
			else {
				break;
			}
		}
		moveY = 0;
	}
}

//update movement values
x += moveX;
y += moveY;
