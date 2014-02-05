user = argument0
spd = argument1
g = global_debugger_OBJ.id

dx = g.right_press - g.left_press
dy = g.down_press - g.up_press

// conditional to avoid per-step computations
if (dx != 0 && dy != 0) norm_factor = 0.707106781     // 1 / sqrt(2)
else norm_factor = 1

user.x += dx * norm_factor * spd
user.y += dy * norm_factor * spd

