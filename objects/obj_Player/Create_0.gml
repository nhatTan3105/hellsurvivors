walkSpeed = 1.5;

gamepad_set_axis_deadzone(0, 0.2);

alarm_slash = 60;
alarm_shield = 20;
alarm_blackhole = 150;
alarm_fireball = 20;
alarm_collection = 20;
alarm_fireshoot = 60;
alarm_lightbolt = 90;

//weapon damage
dmg_slash = 60;
dmg_fireball = 30;
dmg_blackhole = 40;
dmg_fireshoot = 30;
dmg_lightbolt = 70;
dmg_shield = 0;

global.enemy_limit = 20;

alarm[0] = 30;
alarm[1] = alarm_shield;
alarm[2] = alarm_blackhole;
alarm[3] = alarm_fireball;
alarm[5] = alarm_fireshoot;
alarm[6] = alarm_lightbolt;

//collecting soul
alarm[4] = alarm_collection;

//increase enemy limit
alarm[11] = 30;


//FireBall
fire_ball_offset_x = 70; // Điểm x tương đối so với obj_Player
fire_ball_offset_y = 0; // Điểm y tương đối so với obj_Player
fireball_created = false; // Khởi tạo biến để kiểm tra xem fireball đã được tạo ra hay chưa

//Shield
shield_created = false;



//Collect Zone
collect_zone = 50;

//XP system
xp = 0;
xpNextLv = 4;