menu = argument0

while (menu.select_id.enabled == 0) {
    menu.selection++
    menu.select_id = menu.sel_ids[menu.selection]
}

menu_draw_text_OBJ.text = menu.sel_txt[menu.selection]

