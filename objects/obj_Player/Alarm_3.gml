/// @description Weapon FireBall
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
event_user(3);

alarm[3] = global.alarm_fireball;


