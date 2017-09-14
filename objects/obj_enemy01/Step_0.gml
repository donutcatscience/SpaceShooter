/// @description Enemy AI Controls


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
