/// @description blackhole
// You can write your code in this editor
alarm[0] = global.alarm_blackhole
if(global.pause_sound == false){
	audio_play_sound(blackhole, 10, false);
	alarm[0] = global.alarm_blackhole
}



