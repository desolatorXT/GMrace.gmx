user = argument0

chance = irandom(100)

if (chance < 4)
    instance_create(user.x,user.y,hp_pickup_OBJ)

if (chance > 9 && chance < 15)
    instance_create(user.x,user.y,pow_pickup_OBJ)

if (chance > 15 && chance < 20)
    instance_create(user.x,user.y,attspd_pickup_OBJ)

if (chance > 25 && chance < 30)
    instance_create(user.x,user.y,spd_pickup_OBJ)
    
if (chance > 35 && chance < 40)
    instance_create(user.x,user.y,life_pickup_OBJ)

if (chance > 96)
    instance_create(user.x,user.y,missile_pickup_OBJ)

