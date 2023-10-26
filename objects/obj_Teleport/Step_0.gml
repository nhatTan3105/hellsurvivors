// Cập nhật độ trong suốt
alpha -= fade_speed;

// Kiểm tra xem alpha có âm không để ngăn chặn giảm quá mức 0
if (alpha < 0) {
    alpha = 0;
}
