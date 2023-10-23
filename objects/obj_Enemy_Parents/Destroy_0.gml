/// @description Insert description here
// You can write your code in this editor

// Tạo một số ngẫu nhiên từ 1 đến 10
var randomNum = irandom_range(1, 200);

// Nếu randomNum là từ 1 đến 9, tạo obj_Coin
if (randomNum < 195) {
    instance_create_layer(x, y, "Instances_1", obj_Coin);
}else if(randomNum >= 195 && randomNum <=199){
    instance_create_layer(x, y, "Instances_1", obj_Heart);
}
else if(randomNum > 199 && randomNum <=200){
    instance_create_layer(x, y, "Instances_1", obj_Chest);
}
