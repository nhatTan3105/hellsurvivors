/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
instance_create_layer(x, y, "Instances_1", obj_Chest);

//destroy enemy
var num_enemies = instance_number(obj_Enemey_FlyEye);
for (var i = 0; i < num_enemies; i++) {
    var enemy = instance_find(obj_Enemey_FlyEye, i);
    // Kiểm tra xem enemy có tồn tại không trước khi hủy
    if (instance_exists(enemy)) {
        // Hủy instance của obj_enemy_skeleton
        instance_destroy(enemy);
		instance_destroy(obj_Enemey_FlyEye);
    }
}

instance_create_layer(x+150, y+150, "Instances_1", obj_Enemy_Goblin);
instance_create_layer(x+179, y-160, "Instances_1", obj_Enemy_Goblin);
instance_create_layer(x-157, y+180, "Instances_1", obj_Enemy_Goblin);

//instance_create_layer(x, y, "Instances_1", obj_Teleport);
global.enemy_limit = 20;
global.boss1_created = true;
global.lv1 = true;
global.lv2 = true;
global.lv_choose = 2;
global.collect_zone = 500;
audio_stop_sound(boss1_gru);
audio_play_sound(boss_dead, 30, false);

