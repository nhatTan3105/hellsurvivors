/// @description left pressed up level
// You can write your code in this editor
audio_play_sound(menu_select, 10, false);
if(state == "idle"){
	obj_UpLevel1.state = "pop_out";
	image_blend = c_blue;
}

//Slash upgrade
if(obj_UpLevel1.sprite_index == s_upgrade_slash){
		if(global.alarm_slash == -1 ){
			global.alarm_slash = 60;
			//up lvl
			global.slash_lvl += 1;
			obj_Player.alarm[0] = global.alarm_slash;
			global.pick_slash = true;
			ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_slash));
			show_debug_message("Slash lvl:" + string(global.slash_lvl))
		}else{
						//-20% countdown
			global.alarm_slash -= global.alarm_slash*0.2;
			//up lvl
			global.slash_lvl += 1;
			//+50% dmg 
			global.slash_dmg += global.slash_dmg*0.5; 
			show_debug_message("Slash lvl:" + string(global.slash_lvl))
			//+30% size
			global.slash_img_xs += global.slash_img_xs*0.2;
			global.slash_img_ys += global.slash_img_ys*0.2;
			//+50% hitbox
			global.addX_Slash += global.addX_Slash*0.1;
			global.pick_slash = true;
		}
	
}
//Shield upgrade
else if(obj_UpLevel1.sprite_index == s_upgrade_shield){
	if(global.alarm_shield == -1){
		global.alarm_shield = 20;
		global.shield_lvl = 1;
		obj_Player.alarm[1] = global.alarm_shield;
		show_debug_message("shield lvl:" + string(global.shield_lvl))
		global.pick_shield = true;
		ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_shield));
	}else{
		//+30% push back
		global.push_back += global.push_back*0.3;
		//+20% size
		global.shield_img_xs += global.shield_img_xs*0.2;
		global.shield_img_ys += global.shield_img_xs*0.2;
		global.shield_lvl += 1;
		show_debug_message("shield lvl:" + string(global.shield_lvl))
		global.pick_shield = true;
	}
	
}
//Fireshoot upgrade
else if(obj_UpLevel1.sprite_index == s_upgrade_fireshoot){
	if(global.alarm_fireshoot == -1){
		global.alarm_fireshoot = 40;
		global.fireshoot_lvl = 1;
		obj_Player.alarm[5] = global.alarm_fireshoot;
		show_debug_message("fireshoot lvl:" + string(global.fireshoot_lvl))
		global.pick_fireshoot = true;
		global.fireshoot_count += 1;
		ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_fireshoot));
	}else{
		//-20% countdown
		global.alarm_fireshoot -= global.alarm_fireshoot*0.2;
		//+50% dmg
		global.fireshoot_dmg += global.fireshoot_dmg*0.5
		global.fireshoot_lvl += 1;
		show_debug_message("fireshoot lvl:" + string(global.fireshoot_lvl))
		global.pick_fireshoot = true;
		global.fireshoot_count += 1;
	}
	
		

}
//lightbolt
else if(obj_UpLevel1.sprite_index == s_upgrade_lightbolt){
	if(global.alarm_lightbolt == -1){
		global.alarm_lightbolt = 120;
		global.lightbolt_lvl = 1;
		obj_Player.alarm[6] = global.alarm_lightbolt;
		show_debug_message("lightbolt lvl:" + string(global.lightbolt_lvl))
		global.pick_lightbolt = true;
		ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_lightbolt));
	}else{
	//-30% countdown
	global.alarm_lightbolt -= global.alarm_lightbolt*0.3;
	//+30% dmg
	global.lightbolt_dmg += global.lightbolt_dmg*0.3;
	global.lightbolt_lvl += 1;
	show_debug_message("lightbolt lvl:" + string(global.lightbolt_lvl))
	global.pick_lightbolt = true;
	}
	
}
//blackhole
else if(obj_UpLevel1.sprite_index == s_upgrade_blackhole){
	if(global.alarm_blackhole== -1){
		global.alarm_blackhole = 120;
		global.blackhole_lvl = 1;
		global.blackhole_count += 1;
		obj_Player.alarm[2] = global.alarm_blackhole;
		show_debug_message("blackhole lvl:" + string(global.blackhole_lvl))
		global.pick_blackhole = true;
		ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_blackhole));
	}else{
		//-30% countdown
		global.alarm_blackhole -= global.alarm_blackhole*0.3;
		//+30% dmg
		global.blackhole_dmg += global.blackhole_dmg*0.3;
		global.blackhole_lvl += 1;
		global.blackhole_count+=1;
		obj_Player.alarm[2] = global.alarm_blackhole;
		show_debug_message("blackhole lvl:" + string(global.blackhole_lvl))
		global.pick_blackhole = true;
	}

}
//fireball
else if(obj_UpLevel1.sprite_index == s_upgrade_fireball){
		if(global.alarm_fireball == -1){
		global.alarm_fireball = 60
		global.fireball_lvl = 1;
		global.fireball_count += 1;
		obj_Player.alarm[3] = global.alarm_fireball;
		show_debug_message("fireball lvl:" + string(global.fireball_lvl))
		global.pick_fireball = true;
		ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_fireball));
	}else{
		//-50% countdown
		global.alarm_fireball -= global.alarm_fireball*0.5;
		global.fireball_count += 1;
		//+50% dmg
		global.fireball_dmg += global.fireball_dmg*0.5
		global.fireball_lvl += 1;
		obj_Player.alarm[3] = global.alarm_fireball
		show_debug_message("fireball lvl:" + string(global.fireball_lvl))
		global.pick_fireball = true;
	}
}

global.pause = false;
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevel1);
instance_destroy(obj_UpLevel2);
instance_destroy(obj_UpLevelGUI)




