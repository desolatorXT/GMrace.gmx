pl = argument0
pl_obj = global_debugger_OBJ.player[pl]

if (pl_obj == noone) exit

with (hud_OBJ) {
//lives
draw_sprite(hud_lives_SPR,0,2,room_height-15)
//draw lives number
draw_text_color(19,room_height-15,string(player_OBJ.extra_lives),c_white,c_white,c_white,c_white,255)
//-------------------------------

//HP bar
bar_width = sprite_get_width(hud_hp_SPR) - 16
width = clamp(bar_width * (pl_obj.hp / pl_obj.max_hp), 0, bar_width)
height = sprite_get_height(hud_hp_SPR)

// draw the "empty" sprite first
draw_sprite(hud_hp_SPR, 1, 40, room_height-15)
// then cover it with the actual bar
draw_sprite_part(hud_hp_SPR, 0, 16, 0, width, height, 40 + 16, room_height-15)

//-------------------------------

//energy bar
bar_width = sprite_get_width(hud_energy_SPR) - 16
width = clamp(bar_width * (pl_obj.energy / pl_obj.max_energy), 0, bar_width)
height = sprite_get_height(hud_energy_SPR)

// draw the "empty sprite first
draw_sprite(hud_energy_SPR, 1, 112, room_height-15)
// then cover it with the actual bar
draw_sprite_part(hud_energy_SPR, 0, 16, 0, width, height, 112 + 16, room_height-15)
//-------------------------------

//secondary weap ico
draw_sprite(secondary_ico[pl],0,184,room_height-15)
//secondary weap ammo
draw_text_color(203,room_height-15,string(player_OBJ.secondary_weap.ammo),c_white,c_white,c_white,c_white,255)

}
