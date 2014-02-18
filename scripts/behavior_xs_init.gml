goto_x = x - 64
goto_y[0] = 16
goto_y[1] = (room_height - 16) - 16
done[0] = 0
done[1] = 0
orb_firing = 0

for (var i = 0; i < 2; i++) if (instance_exists(orb[(cur+i*3) mod 6])) {
    cur_orb = orb[(cur+i*3) mod 6]
    cur_orb.step_enabled = 0
    cur_orb.speed = 2.5
    cur_orb.direction = point_direction(cur_orb.x,cur_orb.y,goto_x,goto_y[i])
}

