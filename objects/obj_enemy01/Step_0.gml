/// @description Enemy AI Controls

//play sound and fire gun
if (fireWeapon = 1){
	audio_play_sound(sfx_bulletGun,1,false);
	var xx, yy; 
	xx = obj_player.x; //saves player's current location to fire at
	yy = obj_player.y;
	with (instance_create_layer(x,y,"Instances",obj_enemyBullet1))
		{
		direction = point_direction(x, y, xx, yy);
   }
   fireWeapon = 0;
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
