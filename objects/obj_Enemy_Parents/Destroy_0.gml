/// @description Insert description here
// You can write your code in this editor

// Tạo một số ngẫu nhiên từ 1 đến 10
var randomNum = irandom_range(1, 400);

// Nếu randomNum là từ 1 đến 9, tạo obj_Coin
if (randomNum < 394) {
    instance_create_layer(x, y, "Instances_1", obj_Coin);
}else if(randomNum >= 394 && randomNum <=396){
    instance_create_layer(x, y, "Instances_1", obj_Coin_All);
}else if(randomNum > 396 && randomNum <=399){
    instance_create_layer(x, y, "Instances_1", obj_Heart);
}
else if(randomNum > 399 && randomNum <=400){
	if(!instance_exists(obj_Chest)){
		instance_create_layer(x, y, "Instances_1", obj_Chest);
	}
}
global.enemy_dead += 1;
