/// @description Insert description here
// You can write your code in this editor

event_inherited();
//Loop
alarm[0] = 30;
if(instance_exists(obj_UpLevel0)){
	image_speed = 0;
	speed = 0;
	exit;
}
//move to object player
	image_speed = 1;
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = walkSpeed;
	if(obj_Player.x > x){
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
	depth = -y;
	if(sprite_index == sprite_takehit){
		sprite_index = sprite_none_takehit;
	}



