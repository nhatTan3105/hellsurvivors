/// @description shield
// You can write your code in this editor
alarm[2] = global.alarm_shield
if(global.pause_sound == false){
	audio_play_sound(shield_active, 10, false);
	alarm[2] = global.alarm_shield
}


