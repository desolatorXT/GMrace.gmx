g = global_debugger_OBJ.id

if (keyboard_check_pressed(g.cf_up_key)) then {
 g.up_press = 1
}
if (keyboard_check_released(g.cf_up_key)) then {
 g.up_press = 0
}
if (keyboard_check_pressed(g.cf_down_key)) then {
 g.down_press = 1
}
if (keyboard_check_released(g.cf_down_key)) then {
 g.down_press = 0
}
if (keyboard_check_pressed(g.cf_left_key)) then {
 g.left_press = 1
}
if (keyboard_check_released(g.cf_left_key)) then {
 g.left_press = 0
}
if (keyboard_check_pressed(g.cf_right_key)) then {
 g.right_press = 1
}
if (keyboard_check_released(g.cf_right_key)) then {
 g.right_press = 0
}
if (keyboard_check_pressed(g.cf_fire_key)) then {
 g.fire_press = 1
}
if (keyboard_check_released(g.cf_fire_key)) then {
 g.fire_press = 0
}
if (keyboard_check_pressed(g.cf_altfire_key)) then {
 g.altfire_press = 1
}
if (keyboard_check_released(g.cf_altfire_key)) then {
 g.altfire_press = 0
}

