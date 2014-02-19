done= 0
orb_firing = 0
orb_mult[0] = 1
orb_mult[1] = -1
orb_center_x = -20
orb_center_y = -6
orb_radius = point_distance(orb_center_x,orb_center_y,0,-32)
orb_angle = ceil(point_direction(orb_center_x,orb_center_y,0,-32))
orb_angle_init = orb_angle
orbs_missing = 0

for (var i = 0; i < 2; i++) if (instance_exists(orb[(cur+i*3) mod 6])) {
    orb[(cur+i*3) mod 6].external_locals = 1
} else {
    orbs_missing++
}


