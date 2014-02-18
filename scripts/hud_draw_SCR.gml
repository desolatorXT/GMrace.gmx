pl = argument0
pl_obj = global_debugger_OBJ.player[pl]

if (pl_obj == noone) exit

if (instance_exists(boss_PAR)) {
    boss = instance_nearest(0,0,boss_PAR)
    // outline
    x0 = room_width/4
    x1 = x0*3
    y0 = 8
    y1 = y0 + 8
    
    draw_rectangle_color(x0,y0,x1,y1,c_black,c_black,c_black,c_black,true)
    x1h = x0 + 1 + (boss.hp / boss.max_hp) * (x1 - x0 - 2)
    draw_rectangle_color(x0+1,y0+1,x1h,y1-1,c_red,c_red,c_red,c_red,false)
}

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
