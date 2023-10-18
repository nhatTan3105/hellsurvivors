/// @description Insert description here
// You can write your code in this editor

if(global.player_mana >= 9){
		if(image_xscale == 1){
		instance_create_depth(x + 150, y, -2005, obj_Weapon_Summo);
	}else{
	
		instance_create_depth(x - 150, y, -2005, obj_Weapon_Summo);
		obj_Weapon_Summo.image_xscale = -1;
	}
	global.player_mana = 0;
}



