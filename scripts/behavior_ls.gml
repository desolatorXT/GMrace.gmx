if (done == 0) {
    orb_angle += 8
    if (abs(orb_angle - 180) < 8) {
        orb_angle = 180
        // fire shot
        instance_create(x+orb_center_x-orb_radius,y,boss1_wave_OBJ)
        done = 1
    }
} else if (done == 1) {
    orb_angle -= 4
    if (abs(orb_angle - orb_angle_init) < 4) {
        done = 2
    }
}
for (var i = 0; i < 2; i++) if (instance_exists(orb[(cur+i*3) mod 6])) {
    cur_orb = orb[(cur+i*3) mod 6]
    if (done != 2) {
        orb_x = orb_radius*cos(degtorad(orb_angle))
        orb_y = -orb_radius*sin(degtorad(orb_angle))
        cur_orb.local_x = orb_x + orb_center_x
        cur_orb.local_y = orb_mult[i] * (orb_y + orb_center_y)
    } else {
        cur_orb.external_locals = 0
        rotating = 1
    }
}

