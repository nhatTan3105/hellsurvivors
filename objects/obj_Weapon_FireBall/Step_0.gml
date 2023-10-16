/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(instance_exists(obj_UpLevel)){
	image_speed = 0;
	exit;
}

image_speed = 1;
angle_increase = 2;
phase += angle_increase;
x = obj_Player.x + radius * dcos(phase);
y = obj_Player.y - radius * dsin(phase);


