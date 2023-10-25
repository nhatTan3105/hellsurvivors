/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
walkSpeed = 0.9;
hp = 8500;
max_hp = hp;
audio_play_sound(boss3_gru, 10, true);
sprite_none_takehit = s_boss3_death;
sprite_takehit = s_boss3_death_takehit;
dmg = 0.12;

alarm[0] = 30;

