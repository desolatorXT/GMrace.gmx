l1_nr = argument0
l2_nr = argument1

if (l1_nr < star_ctrl_OBJ.l1_count) then {
 temp = instance_create(room_width-2,random(room_height),star_OBJ)
 temp.direction = star_ctrl_OBJ.star_dir
 temp.speed = star_ctrl_OBJ.star_spd - 0.25
 temp.layer = 1
}

if (l2_nr < star_ctrl_OBJ.l2_count) then {
 temp = instance_create(room_width-2,random(room_height),star_OBJ)
 temp.direction = star_ctrl_OBJ.star_dir
 temp.speed = star_ctrl_OBJ.star_spd + 0.5
 temp.layer = 2
}
