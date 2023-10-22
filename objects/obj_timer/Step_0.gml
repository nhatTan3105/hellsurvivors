
	if(global.alarm_blackhole != -1 && global.check_al1 == false){
		alarm[0] = global.alarm_blackhole;
		global.check_al1 = true;
	}
	if(global.alarm_fireshoot != -1 && global.check_al2 == false){
		alarm[1] = 40;
		global.check_al2 = true;
	}
	if(global.alarm_shield != 1 && global.check_al3 == false){
		alarm[2] = global.alarm_shield;
		global.check_al3 = true;
	}
	if(global.alarm_slash != -1 && global.check_al4 == false){
		alarm[3] = global.alarm_slash;
		global.check_al4 = true;
	}
