pl = argument0
pl_obj = global_debugger_OBJ.player[pl]

if (pl_obj == noone) exit

with (hud_OBJ) {
//lives
draw_sprite(hud_lives_SPR,0,hud_lives_ico_x[pl],room_height-15)
//draw lives number
draw_text_color(hud_lives_txt_x[pl],room_height-15,string(pl_obj.extra_lives),c_white,c_white,c_white,c_white,255)
//-------------------------------

//HP bar
bar_width = sprite_get_width(hud_hp_bar_SPR)
width = clamp(bar_width * (pl_obj.hp / pl_obj.max_hp), 0, bar_width)
height = sprite_get_height(hud_hp_bar_SPR)

draw_sprite(hud_hp_ico_SPR, 0, hud_hp_ico_x[pl], room_height-15)
draw_sprite(hud_empty_bar_SPR, 0, hud_hp_bar_x[pl], room_height-15)
draw_sprite_part(hud_hp_bar_SPR, 0, 0, 0, width, height, hud_hp_bar_x[pl], room_height-15)

//-------------------------------

//energy bar
bar_width = sprite_get_width(hud_energy_bar_SPR)
width = clamp(bar_width * (pl_obj.energy / pl_obj.max_energy), 0, bar_width)
height = sprite_get_height(hud_energy_bar_SPR)

draw_sprite(hud_energy_ico_SPR, 0, hud_energy_ico_x[pl], room_height-15)
draw_sprite(hud_empty_bar_SPR, 0, hud_energy_bar_x[pl], room_height-15)
draw_sprite_part(hud_energy_bar_SPR, 0, 0, 0, width, height, hud_energy_bar_x[pl], room_height-15)
//-------------------------------

//secondary weap ico
secondary_ico = pl_obj[pl].secondary_weap.icon
draw_sprite(secondary_ico,0,hud_secondary_ico_x[pl],room_height-15)
//secondary weap ammo
if (pl_obj.secondary_weap.ammo <0) then {temp = '-'} else {temp = string(pl_obj.secondary_weap.ammo)}
draw_text_color(hud_secondary_txt_x[pl],room_height-15,temp,c_white,c_white,c_white,c_white,255)

}
