
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
					audio_play_sound(firehit, 10, false);
						enemy.hp -= dmg;
						global.enemy_hp_decrease_cooldown = true;
						alarm[0] = 10;
				}
	            enemy.sprite_index = enemy.sprite_takehit;
	            // Đẩy enemy lùi khi va chạm
				var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(15, dir);
	            enemy.y += lengthdir_y(15, dir);
			}else{
				if(!global.enemy_hp_decrease_cooldown){
						audio_play_sound(firehit, 10, false);
						enemy.hp -= dmg;
						global.enemy_hp_decrease_cooldown = true;
						alarm[0] = 40;
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
