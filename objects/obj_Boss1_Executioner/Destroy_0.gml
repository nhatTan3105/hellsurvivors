/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
instance_create_layer(x, y, "Instances_1", obj_Chest);
instance_destroy(obj_Enemey_FlyEye);
instance_create_layer(x+150, y+150, "Instances_1", obj_Enemy_Goblin);
global.enemy_limit = 20;
global.boss1_created = true;

