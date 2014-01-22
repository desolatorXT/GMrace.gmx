l1_count = argument0
l2_count = argument1

temp = -1

for(i=0; i < l1_count; i=i+1) {
 temp = instance_create(random(room_width),random(room_height),star_OBJ)
 temp.direction = star_ctrl_OBJ.star_dir
 temp.speed = star_ctrl_OBJ.star_spd - 0.25
 temp.layer = 1
}

for(i=0; i < l2_count; i=i+1) {
 temp = instance_create(random(room_width),random(room_height),star_OBJ)
 temp.direction = star_ctrl_OBJ.star_dir
 temp.speed = star_ctrl_OBJ.star_spd + 0.5
 temp.layer = 2
}
