/// @description Insert description here
// You can write your code in this editor
var random_sound = irandom(3); // Số ngẫu nhiên từ 0 đến 3

switch (random_sound) {
    case 0:
        audio_play_sound(w1, 10, false);
        break;
    case 1:
        audio_play_sound(w2, 10, false);
        break;
    case 2:
        audio_play_sound(w3, 10, false);
        break;
    case 3:
        audio_play_sound(w4, 10, false);
        break;
}
alarm[0] = 400;



