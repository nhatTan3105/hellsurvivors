/// @description Insert description here
// You can write your code in this editor


event_inherited();
if(obj_Player.sprite_index == s_player_idle || obj_Player.sprite_index == s_player_run){
	obj_Player.sprite_index = s_player_attack;
}
x = obj_Player.x + addX;
y = obj_Player.y;

