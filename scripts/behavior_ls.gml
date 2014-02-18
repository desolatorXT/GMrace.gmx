show_debug_message("behavior_hm called with self = " + string(self.id))
show_debug_message("counter = " + string(counter))
counter--
if (counter <= 0 && angle == 270) with (owner) event_user(0)

