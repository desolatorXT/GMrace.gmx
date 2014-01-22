menu = argument0
drawer = argument1

// everything considering selection and action button included
if (global_debugger_OBJ.ctrl_press = 1)&&(menu.select_id.wait == 0) then {
    menu.select_id.alarm[0] = 1
}

if (menu.can_select = 0) then {
 menu.counter = menu.counter + 1
 if (menu.counter > 5 or (global_debugger_OBJ.down_press == 0 and global_debugger_OBJ.up_press == 0)) then {
  menu.counter = 0 
  menu.can_select = 1
 }
}

menu.select_id = menu.sel_ids[menu.selection]
drawer.text = menu.sel_txt[menu.selection]

/*if (selection = 1) then {
    menu.select_id = menu_sp_OBJ.id
    menu_draw_text_OBJ.text = "Launch the game's test level."
}
if (selection = 2) then {
    menu.select_id = menu_mp_OBJ.id
    menu_draw_text_OBJ.text = "Currently NOT availiable."
}
if (selection = 3) then {
    menu.select_id = menu_options_OBJ.id
    menu_draw_text_OBJ.text = "Configure game's settings."
}
if (selection = 4) then {
select_id = menu_controls_OBJ.id
menu_draw_text_OBJ.text = "Change the game's control scheme."
}
if (selection = 5) then {
select_id = menu_credits_OBJ.id
menu_draw_text_OBJ.text = "Currently NOT availiable."
}
if (selection = 6) then {
select_id = menu_exit_OBJ.id
menu_draw_text_OBJ.text = "Exit to Windows."
}*/

if (global_debugger_OBJ.up_press = 1)&&(can_select = 1) then {
 menu.selection -= 1
 if (menu.selection < 0) then { menu.selection = menu.sel_len - 1 }
 menu.can_select = 0
 audio_play_sound(ping2_SND,0,0)
 exit;
}

if (global_debugger_OBJ.down_press = 1)&&(can_select = 1) then {
 menu.selection += 1
 if (menu.selection >= menu.sel_len) then { menu.selection = 0 }
 menu.can_select = 0
 audio_play_sound(ping2_SND,0,0)
 exit;
}
//everything considering selection and action button



