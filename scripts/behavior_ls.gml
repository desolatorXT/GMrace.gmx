if (orbs_missing == 2) {
    rotating = 1
    exit
}

if (done == 0) {
    if (abs(orb_angle - 180) < orb_rot_spd) {
        orb_angle = 180
        // fire shot if we have both orbs
        if (orbs_missing == 0) {
            instance_create(x+orb_center_x-orb_radius,y,boss1_wave_OBJ)
            done = 1
        } else {
            // more switcheroo!
            temp = orb[cur]
            orb[cur] = orb[(cur+3) mod 6]
            orb[(cur+3) mod 6] = temp
            done = 3
        }
    } else {
        orb_angle += orb_rot_spd
        orb_rot_spd++
    }
} else if (done == 1) {
    orb_angle -= 4
    if (abs(orb_angle - orb_angle_init) < 4) {
        done = 2
    }
} else if (done == 3) {
    // oops, no partner, let's just fly around to his spot
    orb_rot_spd = max(orb_rot_spd - 1, 4)
    orb_angle -= orb_rot_spd
    if (abs(orb_angle - orb_angle_init) < 4) {
        done = 4
    }
}

orbs_missing = 0
for (var i = 0; i < 2; i++) if (instance_exists(orb[(cur+i*3) mod 6])) {
    cur_orb = orb[(cur+i*3) mod 6]
    if (done != 2 && done != 4) {
        orb_x = orb_radius*cos(degtorad(orb_angle))
        orb_y = -orb_radius*sin(degtorad(orb_angle))
        cur_orb.local_x = orb_x + orb_center_x
        cur_orb.local_y = orb_mult[i] * (orb_y + orb_center_y)
    } else {
        if (done == 4) cur_orb.angle = (cur_orb.angle + 180) mod 360
        cur_orb.external_locals = 0
        rotating = 1
    }
} else {
    orbs_missing++
}

