/// @description Insert description here
// You can write your code in this editor

if(state == "idle"){
	obj_UpLevel.state = "pop_out";
	image_blend = c_blue;
}

//upgrade slash
if(global.upgrade.sprite_index != s_upgrade_slash){
	global.slash_dmg = global.slash_dmg*0.5;
	global.slash_img_xs += global.slash_img_xs*0.5;
	global.slash_img_ys += global.slash_img_ys*0.5;
}
if(global.upgrade.sprite_index == s_upgrade_slash){
	global.push_back += global.push_back*0.3;
	global.shield_img_xs += global.slash_img_xs*0.2;
	global.shield_img_ys += global.slash_img_ys*0.2;
}
instance_destroy(obj_UpLevel);





