/// @description Insert description here
// You can write your code in this editor

if(state == "pop_up"){
	percent += 1/50;
	var pos= animcurve_channel_evaluate(getCurve, percent);
	y = desY - pos;
	if(percent > 1){
		percent = 1;
		state = "idle";
	}
}

if(state == "pop_out"){
	global.pause = false;
	percent -= 1/25;
	instance_destroy(obj_UpLevel0);
	var pos= animcurve_channel_evaluate(getCurve, percent);
	y = desY - pos;
	if(percent <= 0.01){
		instance_destroy();
	}
}





