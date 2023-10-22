/// @description fireshoot
// You can write your code in this editor
alarm[1] = global.alarm_fireshoot
if(global.pause_sound == false){
	audio_play_sound(fireshoot, 10, false);
	alarm[1] = global.alarm_fireshoot
}
