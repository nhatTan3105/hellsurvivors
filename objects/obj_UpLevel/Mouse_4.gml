/// @description Insert description here
// You can write your code in this editor

if(state == "idle"){
	obj_UpLevel.state = "pop_out";
	image_blend = c_blue;
}

//Slash upgrade
if(global.upgrade.sprite_index != s_upgrade_slash){
	//+50% dmg
	global.slash_dmg = global.slash_dmg*0.5; 
	//+50% size
	global.slash_img_xs += global.slash_img_xs*0.5;
	global.slash_img_ys += global.slash_img_ys*0.5;
}
//Shield upgrade
if(global.upgrade.sprite_index != s_upgrade_slash){
	//+30% push back
	global.push_back += global.push_back*0.3;
	//+20% size
	global.shield_img_xs += global.slash_img_xs*0.2;
	global.shield_img_ys += global.slash_img_ys*0.2;
}
//Fireshoot upgrade
if(global.upgrade.sprite_index != s_upgrade_slash){
	//-20% countdown
	global.alarm_fireshoot -= global.alarm_fireshoot*0.2;
	//+50% dmg
	global.fireshoot_dmg += global.fireshoot_dmg*0.5
}
//lightbolt
if(global.upgrade.sprite_index == s_upgrade_slash){
	//-50% countdown
	global.alarm_lightbolt -= global.alarm_lightbolt*0.5;
	//+50% dmg
	global.lightbolt_dmg += global.lightbolt_dmg*0.5
}
instance_destroy(obj_UpLevel);





