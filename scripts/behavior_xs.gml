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
} else {
    done[i] = 2
}

if (done[0] > 0 && done[1] > 0) {
    if (orb_firing == 0) {
        // switcheroo
        temp = orb[cur]
        orb[cur] = orb[(cur+3) mod 6]
        orb[(cur+3) mod 6] = temp
        behavior_xs_init()
        orb[cur].speed = 5
        orb[(cur+3) mod 6].speed = 5
        orb_firing = 1
        // counter to 1 to instafire next step
        counter = 1
    }
    else {
        orb0 = orb[cur]
        orb1 = orb[(cur+3) mod 6]
        if (done[0] == 2 && done[1] == 2) {
            rotating = 1
            exit
        }
        if (done[0] != 2) {
            if (point_distance(orb0.x,orb0.y,x,y-orb0.dst) <= orb0.speed) {
                orb0.speed = 0
                orb0.angle = (orb0.angle + 180) mod 360
                orb0.step_enabled = 1
                done[0] = 2
            } else {
                orb0.speed = 4
                orb0.direction = point_direction(orb0.x,orb0.y,x,y-orb0.dst)
            }
        }
        if (done[1] != 2) {
            if (point_distance(orb1.x,orb1.y,x,y+orb1.dst) <= orb1.speed) {
                orb1.speed = 0
                orb1.angle = (orb1.angle + 180) mod 360
                orb1.step_enabled = 1
                done[1] = 2
            } else {
                orb1.speed = 4
                orb1.direction = point_direction(orb1.x,orb1.y,x,y+orb1.dst)
            }
        }
    }
}
