/// @description controlls collision with enemy bullets

with (other) { //ensures bullet is acting on specific object it made contact with
	instance_create_layer(other.x,other.y - 15,"Instances",obj_shieldContact); //overlay explosion correctly
	instance_destroy();
}