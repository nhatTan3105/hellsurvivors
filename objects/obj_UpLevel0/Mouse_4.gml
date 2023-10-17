/// @description left pressed up level
// You can write your code in this editor

if(state == "idle"){
	obj_UpLevel0.state = "pop_out";
	image_blend = c_blue;
}

//Slash upgrade
if(obj_UpLevel0.sprite_index == s_upgrade_slash){
		if(global.alarm_slash == -1 ){
			global.alarm_slash = 60;
			//up lvl
			global.slash_lvl += 1;
			obj_Player.alarm[0] = global.alarm_slash;
		}else{
			//-10% countdown
			global.alarm_slash -= global.alarm_slash*0.1;
			//up lvl
			global.slash_lvl += 1;
		}
		//+50% dmg 
		global.slash_dmg += global.slash_dmg*0.5; 
		show_debug_message("Slash lvl:" + string(global.slash_lvl))
		
		//+50% size
		global.slash_img_xs += global.slash_img_xs*0.2;
		global.slash_img_ys += global.slash_img_ys*0.2;
	
	
}
//Shield upgrade
else if(obj_UpLevel0.sprite_index == s_upgrade_shield){
	if(global.alarm_shield == -1){
		global.alarm_shield = 20;
		obj_Player.alarm[1] = global.alarm_shield;
	}else{
		//+30% push back
		global.push_back += global.push_back*0.3;
		//+20% size
		global.shield_img_xs += global.shield_img_xs*0.2;
		global.shield_img_ys += global.shield_img_xs*0.2;
		global.shield_lvl += 1;
	}
	
}
//Fireshoot upgrade
else if(obj_UpLevel0.sprite_index == s_upgrade_fireshoot){
	if(global.alarm_fireshoot == -1){
		global.alarm_fireshoot = 60;
		obj_Player.alarm[5] = global.alarm_fireshoot;
	}else{
		//-20% countdown
		global.alarm_fireshoot -= global.alarm_fireshoot*0.2;
		//+50% dmg
		global.fireshoot_dmg += global.fireshoot_dmg*0.5
		global.fireshoot_lvl += 1;
		
	}
	
		

}
//lightbolt
else if(obj_UpLevel0.sprite_index == s_upgrade_lightbolt){
	//-50% countdown
	global.alarm_lightbolt -= global.alarm_lightbolt*0.5;
	//+50% dmg
	global.lightbolt_dmg += global.lightbolt_dmg*0.5
	global.lightbolt_lvl += 1;
	
}
//blackhole
else if(obj_UpLevel0.sprite_index == s_upgrade_blackhole){
	if(global.alarm_blackhole== -1){
		global.alarm_blackhole = 60;
		obj_Player.alarm[2] = global.alarm_blackhole;
	}else{
		//-50% countdown
		global.alarm_blackhole -= global.alarm_blackhole*0.5;
		//+50% dmg
		global.blackhole_dmg += global.blackhole_dmg*0.5
		global.blackhole_lvl += 1;
		//show_debug_message("Blackhole lvl:" + string(global.blackhole_lvl))
		show_debug_message("LightBolt lvl:" + string(global.blackhole_lvl))
		//show_debug_message("Fireball lvl:" + string(global.fireball_lvl))
	}
	
}
//fireball
else if(obj_UpLevel0.sprite_index == s_upgrade_fireball){
	if(global.alarm_fireball == -1){
		global.alarm_fireball = 60;
		obj_Player.alarm[3] = global.alarm_fireball;
	}else{
		//-50% countdown
	global.alarm_fireball -= global.alarm_fireball*0.5;
	//+50% dmg
	global.fireball_dmg += global.fireball_dmg*0.5
	global.fireball_lvl += 1;
	//show_debug_message("Blackhole lvl:" + string(global.blackhole_lvl))
	show_debug_message("LightBolt lvl:" + string(global.fireball_lvl))
	//show_debug_message("Fireball lvl:" + string(global.fireball_lvl))
	}
	
}


global.pause = false;
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevel1);
instance_destroy(obj_UpLevel2);





