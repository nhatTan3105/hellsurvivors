/// @description Weapon Slash
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
event_user(0);

alarm[0] = alarm_slash;
