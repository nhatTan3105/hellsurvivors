/// @description Collect Souls
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
event_user(4);

alarm[4] = alarm_collection;


