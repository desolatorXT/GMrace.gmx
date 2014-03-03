menu = argument0
drawer = menu_draw_text_OBJ

// everything considering selection and action button included
if (global_debugger_OBJ.input[0].fire_press = 1)&&(menu.select_id.wait == 0) then {
    if (menu.select_id == ctr_fire_OBJ) then {
        if (ctr_fire_OBJ.my_backdrop.state == 0) then {
            menu.select_id.alarm[0] = 1
        }
    } else {
    menu.select_id.alarm[0] = 1
    }
}

if (global_debugger_OBJ.input[0].altfire_press == 1 && menu.cancel != noone) then {
    if (menu.cancel.wait == 0) then menu.cancel.alarm[0] = 1
}

if (menu.can_select = 0) then {
 menu.counter = menu.counter + 1
 if (menu.counter > 5 or (global_debugger_OBJ.input[0].down_press == 0 and global_debugger_OBJ.input[0].up_press == 0)) then {
  menu.counter = 0 
  menu.can_select = 1
 }
}

movement = 0
if (global_debugger_OBJ.input[0].up_press == 1) movement--
if (global_debugger_OBJ.input[0].down_press == 1) movement++

if (movement != 0 && can_select == 1) {
    do {
        menu.selection += movement
        if (menu.selection < 0) menu.selection = menu.sel_len - 1
        if (menu.selection >= menu.sel_len) menu.selection = 0
        menu.select_id = menu.sel_ids[menu.selection]
    } until (menu.select_id.enabled == 1)
    menu.can_select = 0
    //play menu selection sound here!
    audio_play_sound(selection_SND,0,0)
}

drawer.text = menu.sel_txt[menu.selection]

//everything considering selection and action button



