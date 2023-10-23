/// @description Insert description here
// You can write your code in this editor

if(global.player_mana >= 9 && global.player_class =="wizard"){
		if(image_xscale == 1){
		instance_create_depth(x, y, -2005, obj_Weapon_Summon_wizard);
	}else{
		instance_create_depth(x , y, -2005, obj_Weapon_Summon_wizard);
		obj_Weapon_Summon_wizard.image_xscale = -1;
	}
	global.player_mana = 0;
}
if(global.player_mana >= 9 && global.player_class =="warrior"){
		if(image_xscale == 1){
		instance_create_depth(x , y, -2005, obj_Weapon_Summon_warrior);
	}else{
		instance_create_depth(x, y, -2005, obj_Weapon_Summon_warrior);
		obj_Weapon_Summon_warrior.image_xscale = -1;
	}
	global.player_mana = 0;
}
if(global.player_mana >= 9 && global.player_class =="acher"){
		if(image_xscale == 1){
		instance_create_depth(x , y, -2005, obj_Weapon_Summon_acher);
	}else{
		instance_create_depth(x , y, -2005, obj_Weapon_Summon_acher);
		obj_Weapon_Summon_acher.image_xscale = -1;
	}
	global.player_mana = 0;
}




