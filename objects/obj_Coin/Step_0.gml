/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_UpLevel)){
	image_speed = 0;
	exit;
}
image_speed = 1;

if(can_collect == true){
	move_towards_point(obj_Player.x, obj_Player.y, 2);
}



