/// @description Insert description here
// You can write your code in this editor

// Tạo một số ngẫu nhiên từ 1 đến 10
var randomNum = irandom_range(1, 100);

// Nếu randomNum là từ 1 đến 9, tạo obj_Coin
if (randomNum < 90) {
    instance_create_layer(x, y, "Instances_1", obj_Coin);
}else if(randomNum >= 90 && randomNum <=98){
    instance_create_layer(x, y, "Instances_1", obj_Heart);
}
else if(randomNum > 98 && randomNum <=100){
    instance_create_layer(x, y, "Instances_1", obj_Chest);
}
