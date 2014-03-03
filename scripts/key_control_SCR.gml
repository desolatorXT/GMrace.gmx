pid = argument0
c = global_debugger_OBJ.config

if (keyboard_check_pressed(c.keys[pid,0])) up_press = 1
if (keyboard_check_released(c.keys[pid,0])) up_press = 0

if (keyboard_check_pressed(c.keys[pid,1])) down_press = 1
if (keyboard_check_released(c.keys[pid,1])) down_press = 0

if (keyboard_check_pressed(c.keys[pid,2])) left_press = 1
if (keyboard_check_released(c.keys[pid,2])) left_press = 0

if (keyboard_check_pressed(c.keys[pid,3])) right_press = 1
if (keyboard_check_released(c.keys[pid,3])) right_press = 0

if (keyboard_check_pressed(c.keys[pid,4])) then {
    if (pid == 0 && instance_exists(ctr_fire_OBJ)) then {
        if (ctr_fire_OBJ.my_backdrop.state == 0) then {
        fire_press = 1
        }
    } else {fire_press = 1}
}
if (keyboard_check_released(c.keys[pid,4])) fire_press = 0

if (keyboard_check_pressed(c.keys[pid,5])) altfire_press = 1
if (keyboard_check_released(c.keys[pid,5])) altfire_press = 0

if (keyboard_check_pressed(c.keys[pid,6])) shield_press = 1
if (keyboard_check_released(c.keys[pid,6])) shield_press = 0
