/// @description Weapon BlackHole
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
event_user(2);

alarm[2] = alarm_blackhole;


