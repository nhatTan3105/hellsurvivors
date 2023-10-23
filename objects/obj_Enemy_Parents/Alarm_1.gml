/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
switch(global.lv_choose){
	case 1: alarm[0] = 1;
			break;			
	case 2: alarm[2] = 1;
			instance_destroy(obj_Enemey_FlyEye);
			break;
	case 3: alarm[3] = 1;
			instance_destroy(obj_Enemy_Goblin);
			break;
	case 4: alarm[4] = 1;
			instance_destroy(obj_Enemy_Mushroom);
			break;
			
}


