level = argument0
counter = argument1
stop = argument2
level_boss = argument3

g = enemy_ctrl_OBJ.id

if (stop = 1) then {
exit;
}

if (level = 1) then  {
 if (level_boss = 0) then {
    if (counter == 120) then {
        instance_create(room_width+16,random_range(32,room_height-32),en1_OBJ)
    }
    if ((counter mod 500)==0) then {
        instance_create(room_width+32,random_range(32,room_height-32),en8_OBJ)
        instance_create(room_width+52,random_range(32,room_height-32),en8_OBJ)
        instance_create(room_width+72,random_range(32,room_height-32),en8_OBJ)
    }
    if ((counter mod 300)==0) then {
        instance_create(room_width+16,random_range(32,room_height-32),en1_OBJ)
    }
    if ((counter mod 450)==0) then {
        instance_create(room_width+16,random_range(32,room_height-32),en1_OBJ)
    }
    if ((counter mod 610)==0) then {
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en5_OBJ)
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en5_OBJ)
    }
    if ((counter mod 750)==0) then {
        instance_create(room_width+16,random_range(32,room_height-32),en1_OBJ)
    }
    if ((counter mod 600)==0) then {
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en4_OBJ)
    }
    if ((counter mod 850)==0) then {
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en6_OBJ)
    }
    if ((counter mod 800)==0) then {
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en2_OBJ)
    }
    if ((counter mod 910)==0) then {
        instance_create(room_width+8+irandom(32),random_range(32,room_height-32),en7_OBJ)
    }
    if (counter == 2499) or (counter == 4999) or (counter == 8000) then {
        instance_create(room_width+16,120,en3_OBJ)
    }
 } else if (level_boss == 1) then {
 //spawn boss, do crap
 if (!instance_exists(enemy_PAR)) then {
 instance_create(room_width+96,room_height/2,boss_lv1_OBJ)
 enemy_ctrl_OBJ.level_boss = 2
 }
 }
}
