show_debug_message("behavior_hm called with self = " + string(self.id))
show_debug_message("counter = " + string(counter))
counter--

if (counter == 13 || counter == 2) {
    // spawn missile
    target = instance_nearest(x,y, friendly_PAR)
    if (target != noone) {
        bullet = instance_create(x,y,en_missile3_OBJ)
        bullet.direction = point_direction(x,y,target.x,target.y)
    }
}

if (counter <= 0 && angle == 270) with (owner) event_user(0)

