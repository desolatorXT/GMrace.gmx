user = argument0

chance = irandom(100)

if (chance >= 70) then {
 drop_item = irandom(60)
 
    if (drop_item < 10) then {
    instance_create(user.x,user.y,hp_pickup_OBJ)
    exit;}

    if (drop_item >= 10) && (chance < 20)  then {
    instance_create(user.x,user.y,pow_pickup_OBJ)
    exit;}

    if (drop_item >= 20) && (chance < 30) then {
    instance_create(user.x,user.y,attspd_pickup_OBJ)
    exit;}

    if (drop_item >= 30) && (chance < 40) then {
    instance_create(user.x,user.y,spd_pickup_OBJ)
    exit;}
    
    if (drop_item >= 40) && (chance < 50) then {
    instance_create(user.x,user.y,life_pickup_OBJ)
    exit;}

    if (drop_item >= 50) then {
    instance_create(user.x,user.y,missile_pickup_OBJ)
    exit;}

}
