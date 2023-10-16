/// @description Insert description here
// You can write your code in this editor

var collide = false;
var mask_left = x - sprite_get_xoffset(sprite_index);
var mask_right = mask_left + sprite_get_width(sprite_index);
var mask_top = y - sprite_get_yoffset(sprite_index);
var mask_bottom = mask_top + sprite_get_height(sprite_index);
var _list = ds_list_create();
var _num = collision_rectangle_list(mask_left, mask_top, mask_right, mask_bottom, obj_Enemy_Parents, false, true, _list, false);
if (_num > 0 && !collide) {
        for (var i = 0; i < _num; ++i) {
			if(_list[| i].sprite_index = _list[| i].sprite_none_takehit){
				
				_list[| i].sprite_index = _list[| i].sprite_takehit;
				
				//Push enemy back when take hit
				var dir = point_direction(x, y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(15, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(15, dir);
				
				_list[| i].hp -= dmg;
				
				//show_debug_message("HP: " +  string(_list[| i].hp));
				//show_debug_message("DMG: " +  string(dmg));
				if (_list[| i].hp <= 0) {
					instance_destroy(_list[| i]);
				}
				collide = true;
				break;
			}
        }
    }
ds_list_destroy(_list);

