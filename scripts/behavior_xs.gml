for (i = 0; i < 2; i++) if (instance_exists(orb[(cur+i*3) mod 6])) {
    cur_orb = orb[(cur+i*3) mod 6]
    if (done[i] == 0) {
        if (orb_firing == 1) {
            counter--
            if (counter == 0) {
                instance_create(cur_orb.x-4,cur_orb.y,en_bullet1_OBJ)
                counter = 5
            }
        }
        if (point_distance(cur_orb.x,cur_orb.y,goto_x,goto_y[i]) < cur_orb.speed) {
            cur_orb.speed = 0
            cur_orb.x = goto_x
            cur_orb.y = goto_y[i]
            done[i] = 1
        }
    }
}

if (done[0] == 1 && done[1] == 1) {
    if (orb_firing == 0) {
        // switcheroo
        temp = orb[cur]
        orb[cur] = orb[(cur+3) mod 6]
        orb[(cur+3) mod 6] = temp
        behavior_xs_init()
        orb_firing = 1
        counter = 5
    }
    else {
        // return to base
    }
}
