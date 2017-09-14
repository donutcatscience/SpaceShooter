/// @description Looks for actions

//check for key press
inputLeft = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
inputRight= max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
inputUp = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
inputDown = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
inputBoost = keyboard_check(vk_shift);
inputFire = mouse_check_button_pressed(mb_left);

//check to see if weapon fireing
if (inputFire) fireWeapon = 1;

//play sound and fire gun
if (fireWeapon = 1){
	audio_play_sound(sfx_bulletGun,1,false);
	instance_create_layer(x,y,"Instances",obj_playerBullet);
	fireWeapon = 0;
}	

//changes ship speed if boost is down
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
				x += sign(moveX);
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
