/// @description Insert description here
// You can write your code in this editor

var mask_left = x - sprite_get_xoffset(sprite_index);
var mask_right = mask_left + sprite_get_width(sprite_index);
var mask_top = y - sprite_get_yoffset(sprite_index);
var mask_bottom = mask_top + sprite_get_height(sprite_index);
var _list = ds_list_create();
var _num = collision_rectangle_list(mask_left, mask_top, mask_right, mask_bottom, obj_Enemy_Parents, false, true, _list, false);
if (_num > 0) {
        for (var i = 0; i < _num; ++i) {

			if (_list[| i].hp <= 0) {
                instance_destroy(_list[| i]);
            }
			else{
				_list[| i].hp -= dmg;
				show_debug_message("HP: " +  string(_list[| i].hp));
				show_debug_message("DMG: " +  string(dmg));
				break;
			}
        }
    }
ds_list_destroy(_list);

