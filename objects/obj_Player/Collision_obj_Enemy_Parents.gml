/// @description Insert description here
// You can write your code in this editor
if(global.player_hp <= 0){
	room_goto(room_end)
}else{
	obj_Player.sprite_index = global.sprite_takehit;
	global.player_hp -= 10;
	instance_destroy(other.id)
}

