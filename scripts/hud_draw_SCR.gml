pl = argument0

with (hud_OBJ) {
//lives
draw_sprite(hud_lives_SPR,0,2,room_height-15)
//draw lives number
draw_text_color(19,room_height-15,string(player_OBJ.extra_lives),c_white,c_white,c_white,c_white,255)
//-------------------------------

//HP bar
draw_sprite(hud_hp_SPR,hp_subimage[pl],40,room_height-15)
//-------------------------------

//energy bar
draw_sprite(hud_energy_SPR,energy_subimage[pl],112,room_height-15)
//-------------------------------

//secondary weap ico
draw_sprite(secondary_ico[pl],0,184,room_height-15)
//secondary weap ammo
draw_text_color(203,room_height-15,string(player_OBJ.secondary_weap.ammo),c_white,c_white,c_white,c_white,255)

}
