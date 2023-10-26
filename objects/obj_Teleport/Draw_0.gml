draw_set_color(c_black); // Màu đen, bạn có thể thay đổi màu sắc tại đây
draw_set_alpha(alpha); // Đặt độ trong suốt
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1); // Đặt lại alpha về giá trị mặc định (1)
