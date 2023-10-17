/// @description Insert description here
// You can write your code in this editor

event_inherited();
if(instance_exists(obj_UpLevel)){
	exit;
}

if(obj_Player.image_xscale == -1){
	image_xscale = -1;
	addX = -40;
}else{
	addX = 40;
}

x = obj_Player.x + addX*1.3;
y = obj_Player.y;

