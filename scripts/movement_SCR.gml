dx = controller.right_press - controller.left_press
dy = controller.down_press - controller.up_press

// conditional to avoid per-step computations
if (dx != 0 && dy != 0) norm_factor = 0.707106781     // 1 / sqrt(2)
else norm_factor = 1

x += dx * norm_factor * spd
y += dy * norm_factor * spd

