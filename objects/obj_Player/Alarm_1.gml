/// @description Weapon Shield
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
event_user(1);


alarm[1] = global.alarm_shield;