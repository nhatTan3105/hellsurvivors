/// @description Insert description here
// You can write your code in this editor

//DRAW HP
// Định dạng thanh HP

var hp_bar_width = 400; // Độ rộng của thanh HP
var hp_bar_height = 45; // Độ cao của thanh HP

var hp_bar_x = global.gui_x + 550; // Vị trí X của thanh HP
var hp_bar_y = global.gui_y + 40; // Vị trí Y của thanh HP
// Thiết lập font và kích thước chữ



// Thiết lập màu và vẽ chữ
draw_set_color(c_white); // Đặt màu chữ (trắng trong trường hợp này)
draw_text_ext(global.gui_x + 500, global.gui_y + 54, "Boss", 48, 70); // 400 là chiều rộng tối đa của vùng vẽ chữ


// Tính toán chiều dài của thanh HP dựa trên giá trị global.player_hp
var hp_percentage = clamp(hp / max_hp, 0, 1);
var hp_bar_length = hp_percentage * hp_bar_width;
// Thiết lập màu đỏ cho phần mất máu
draw_set_color(#323232);
// Vẽ phần mất máu màu đen
draw_rectangle(hp_bar_x + hp_bar_length, hp_bar_y, hp_bar_x + hp_bar_width, hp_bar_y + hp_bar_height, false);
// Thiết lập màu đỏ cho phần còn lại của thanh HP
draw_set_color(#B01F00);
// Vẽ thanh HP màu đỏ
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_bar_length, hp_bar_y + hp_bar_height, false);
// Đặt lại màu về mặc định (trắng) nếu bạn cần vẽ các đối tượng khác với màu mặc định
draw_set_color(c_white);

