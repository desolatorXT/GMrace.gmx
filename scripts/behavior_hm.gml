counter--

if (counter == 13 || counter == 8 || counter == 2) {
    // spawn missile
    for (var i = 0; i < 2; i++)
        if (instance_exists(orb[(cur+i*3) mod 6])) with (orb[(cur+i*3) mod 6]) {
            target = instance_nearest(x,y,friendly_PAR)
            if (target != noone) {
                bullet = instance_create(x,y,en_missile3_OBJ)
                bullet.direction = point_direction(x,y,target.x,target.y)
            }
        }
}

if (counter <= 0) rotating = 1
