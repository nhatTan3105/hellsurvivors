
with(obj_Enemy_Parents){
	
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = walkSpeed;
	if(obj_Player.x > x){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
	depth = -y;
	
}
obj_Player.depth = -obj_Player.y;
alarm[0] = alarmTime;
