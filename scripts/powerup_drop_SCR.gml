user = argument0

chance = irandom(100)

if (chance >= 75) then {
    drop_item = irandom(70)
 
    if (drop_item < 10) instance_create(user.x,user.y,hp_pickup_OBJ)
    else if (drop_item < 20) instance_create(user.x,user.y,pow_pickup_OBJ)
    else if (drop_item < 30) instance_create(user.x,user.y,attspd_pickup_OBJ)
    else if (drop_item < 40) instance_create(user.x,user.y,spd_pickup_OBJ)
    else if (drop_item < 50) instance_create(user.x,user.y,life_pickup_OBJ)
    else if (drop_item < 60) instance_create(user.x,user.y,missile_pickup_OBJ)
    else instance_create(user.x,user.y,energy_pickup_OBJ)

}
