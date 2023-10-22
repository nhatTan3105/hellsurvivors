/// @description Insert description here
// You can write your code in this editor

if(global.player_hp <= 0){
	room_goto(room_end)
}else{
	obj_Player.sprite_index = global.sprite_takehit;
	if (!global.hit_cooldown && !global.pause) {
		audio_play_sound(takehit, 10, false);
	    global.player_hp -= obj_Enemy_Parents.dmg;
	    global.hit_cooldown = true;
	    alarm[10] = 25; // Thiết lập hẹn giờ để tắt hit_cooldown sau 60 step
	}
	
}

