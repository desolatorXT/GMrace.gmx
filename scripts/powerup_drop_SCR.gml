user = argument0

chance = irandom(100)

if (chance < 4) then {
 instance_create(user.x,user.y,hp_pickup_OBJ)
}

if (chance > 9)&&(chance < 15) then {
 instance_create(user.x,user.y,pow_pickup_OBJ)
}

if (chance > 15)&&(chance < 20) then {
 instance_create(user.x,user.y,attspd_pickup_OBJ)
}

if (chance > 96) then {
 instance_create(user.x,user.y,missile_pickup_OBJ)
}
