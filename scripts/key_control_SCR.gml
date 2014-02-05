g = global_debugger_OBJ
c = global_debugger_OBJ.config

if (keyboard_check_pressed(c.up_key)) g.up_press = 1
if (keyboard_check_released(c.up_key)) g.up_press = 0

if (keyboard_check_pressed(c.down_key)) g.down_press = 1
if (keyboard_check_released(c.down_key)) g.down_press = 0

if (keyboard_check_pressed(c.left_key)) g.left_press = 1
if (keyboard_check_released(c.left_key)) g.left_press = 0

if (keyboard_check_pressed(c.right_key)) g.right_press = 1
if (keyboard_check_released(c.right_key)) g.right_press = 0

if (keyboard_check_pressed(c.fire_key)) g.fire_press = 1
if (keyboard_check_released(c.fire_key)) g.fire_press = 0

if (keyboard_check_pressed(c.altfire_key)) g.altfire_press = 1
if (keyboard_check_released(c.altfire_key)) g.altfire_press = 0

