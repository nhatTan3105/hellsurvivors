/// @description Insert description here
// You can write your code in this editor
if(global.player_hp >= 0){
	global.player_hp += global.player_max_hp*0.1;
	instance_destroy(other.id);
}



