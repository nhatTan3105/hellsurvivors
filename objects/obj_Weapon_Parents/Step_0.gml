
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}

var collide = false;
var radius = max(sprite_get_width(sprite_index), sprite_get_height(sprite_index)) / 2; // Bán kính của Precise Collision Mask
var centerX = x;
var centerY = y;

var _list = ds_list_create();
var _num = instance_number(obj_Enemy_Parents);

for (var i = 0; i < _num; ++i) {
    var enemy = instance_find(obj_Enemy_Parents, i);

    if (enemy.sprite_index == enemy.sprite_none_takehit) {
        // Kiểm tra va chạm chính xác sử dụng Precise Collision Mask
        if (point_in_circle(enemy.x, enemy.y, centerX, centerY, radius)) {
			if(sprite_index == s_weapon_shield){
			
			enemy.hp -= 0;
            enemy.sprite_index = enemy.sprite_takehit;
            // Đẩy enemy lùi khi va chạm
			
				 var dir = point_direction(x, y, enemy.x, enemy.y);
            enemy.x += lengthdir_x(15, dir);
            enemy.y += lengthdir_y(15, dir);
			}else{
				enemy.hp -= dmg;
				//show_debug_message("DMG : " + string(dmg));
	            enemy.sprite_index = enemy.sprite_takehit;
	            // Đẩy enemy lùi khi va chạm
			
					 var dir = point_direction(x, y, enemy.x, enemy.y);
	            enemy.x += lengthdir_x(15, dir);
	            enemy.y += lengthdir_y(15, dir);
			}
           
            
            
            
           
            
            if (enemy.hp <= 0) {
                instance_destroy(enemy);
            }
            
            collide = true;
            break;
        }
    }
}

ds_list_destroy(_list);
