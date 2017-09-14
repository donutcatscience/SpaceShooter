/// @description Looks for actions

//check for key press
inputLeft = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
inputRight= max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
inputUp = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
inputDown = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
inputBoost = keyboard_check(vk_shift);

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

//horizontal collision check 
if (moveX != 0){
	if (place_meeting(x + moveX, y, obj_wall)){
		repeat (abs(moveX)){
			if (!place_meeting(x + sign(moveX), y, obj_wall)){
				x += sign(moveX);
			}
			else {
				break;
			}
		}
		moveX = 0;
	}
}

//horizontal collision check 
if (moveY != 0){
	if (place_meeting(x, y + moveY , obj_wall)){
		repeat (abs(moveY)){
			if (!place_meeting(x, y + sign(moveY), obj_wall)){
				x += sign(moveY);
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
