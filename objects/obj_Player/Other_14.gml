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
var _list1 = ds_list_create();
var _num1 = collision_circle_list(obj_Player.x, obj_Player.y, obj_Player.collect_zone, obj_Heart, false, true, _list1, false);
if (_num1 > 0)
{
    for (var i = 0; i < _num1; ++i;)
    {
        _list1[| i].can_collect = true;
    }
}
ds_list_destroy(_list);
ds_list_destroy(_list1);



