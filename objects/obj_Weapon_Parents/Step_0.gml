
//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}

var collide = false;
var radius = max(sprite_get_width(sprite_index), sprite_get_height(sprite_index)) / 2; // Bán kính của Precise Collision Mask
var centerX = x;
var centerY = y;
var _list = ds_list_create();
var _num = instance_number(obj_Enemy_Parents);


for (var i = 0; i < _num; ++i) {
	
	boss1 = instance_find(obj_Boss1_Executioner, 0);
	if(instance_exists(boss1)){
		 if (point_in_circle(boss1.x, boss1.y, centerX, centerY, radius)) {
			if(boss1.sprite_index == boss1.sprite_none_takehit){
				boss1.sprite_index = boss1.sprite_takehit;
				boss1.hp -= dmg;
			}
			alarm[2] = 4;
		 }
	}
	boss2 = instance_find(obj_Boss2_Axe, 0);
	if(instance_exists(boss2)){
		 if (point_in_circle(boss2.x, boss2.y, centerX, centerY, radius)) {
			if(boss2.sprite_index == boss2.sprite_none_takehit){
				boss2.sprite_index = boss2.sprite_takehit;
				boss2.hp -= dmg;
			}
			alarm[2] = 4;
		 }
	}
	boss3 = instance_find(obj_Boss3_Death, 0);
	if(instance_exists(boss3)){
		 if (point_in_circle(boss3.x, boss3.y, centerX, centerY, radius)) {
			if(boss3.sprite_index == boss3.sprite_none_takehit){
				boss3.sprite_index = boss3.sprite_takehit;
				boss3.hp -= dmg;
			}
			alarm[2] = 4;
		 }
	}
	boss4 = instance_find(obj_Boss4_Demon, 0);
	if(instance_exists(boss4)){
		 if (point_in_circle(boss4.x, boss4.y, centerX, centerY, radius)) {
			if(boss4.sprite_index == boss4.sprite_none_takehit){
				boss4.sprite_index = boss4.sprite_takehit;
				boss4.hp -= dmg;
			}
			alarm[2] = 4;
		 }
	}
	
	
	

		
    enemy = instance_find(obj_Enemy_Parents, i);
    if (enemy.sprite_index == enemy.sprite_none_takehit) {
        // Kiểm tra va chạm chính xác sử dụng Precise Collision Mask
        if (point_in_circle(enemy.x, enemy.y, centerX, centerY, radius)) {
			
			if(sprite_index == s_weapon_shield){
				enemy.hp -= 0;
	            enemy.sprite_index = enemy.sprite_takehit;
	            // Đẩy enemy lùi khi va chạm
				 var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(global.push_back, dir);
	            enemy.y += lengthdir_y(global.push_back, dir);
			}else if(sprite_index == s_weapon_blackhole){
				enemy.hp -= dmg;
				enemy.sprite_index = enemy.sprite_takehit;
				// Hút enemy lùi khi va chạm
				var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(-10, dir);
	            enemy.y += lengthdir_y(-10, dir);
			}else if(sprite_index == s_weapon_slash){
				if(!global.enemy_hp_decrease_cooldown){
						audio_play_sound(takehit, 10, false);
						enemy.hp -= dmg;
						global.enemy_hp_decrease_cooldown = true;
						alarm[0] = 5;
				}
	            enemy.sprite_index = enemy.sprite_takehit;
	            // Đẩy enemy lùi khi va chạm
				var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(15, dir);
	            enemy.y += lengthdir_y(15, dir);
			}else{
				if(!global.enemy_hp_decrease_cooldown){
					if(sprite_index == s_weapon_fireshoot || sprite_index == s_waepon_fireball){
						audio_play_sound(firehit, 10, false);
					}
					if(sprite_index == s_weapon_lightbolt){
						audio_play_sound(electrichit, 10, false);
					}
					
						audio_play_sound(takehit, 10, false);
						enemy.hp -= dmg;
						global.enemy_hp_decrease_cooldown = true;
						alarm[0] = 10;
				}
	            enemy.sprite_index = enemy.sprite_takehit;
	            // Đẩy enemy lùi khi va chạm
				var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(15, dir);
	            enemy.y += lengthdir_y(15, dir);
			}
            if (enemy.hp <= 0) {
				if(enemy.sprite_index == s_boss1_executioner){
					instance_destroy(enemy);
					alarm[1] = 1;
				}
				instance_destroy(enemy);
                
            }
	            collide = true;
	            break;
        }
    }
}
ds_list_destroy(_list);
