/// @description Collect Souls
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}
var _list = ds_list_create();
var _num = collision_circle_list(obj_Player.x, obj_Player.y, obj_Player.collect_zone, obj_Coin, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
        _list[| i].can_collect = true;
    }
}
ds_list_destroy(_list);



