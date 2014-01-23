user = argument0
g = global_debugger_OBJ.id

if (user.can_fire = 0) then {
 user.fire_counter = user.fire_counter + 1
if (user.fire_counter > user.fire_rate) then {
 user.fire_counter = 0
 user.can_fire = 1
 }
}

if (g.fire_press = 1) then {
 if (user.can_fire = 1) then {
  if (user.firing = 0) then {
  fx_up = instance_create(user.x,user.y-8,fire_fx_OBJ)
  fx_down = instance_create(user.x,user.y+8,fire_fx_OBJ)
  user.fx_up = fx_up
  user.fx_down = fx_down
  fx_up.creator = user
  fx_up.course = 1
  fx_down.creator = user
  fx_down.course = 2
  user.firing = 1
  exit;
  }
 }
}
if (user.firing = 1) then {
//wait
exit;
}

if (user.firing = 2) then {
  my_bullet = instance_create(user.fx_up.x+8,user.fx_up.y,pl_bullet_OBJ)
  my_bullet.damage = user.damage
  user.can_fire = 0
  user.fire_counter = 0
  user.firing = 0
  instance_deactivate_object(fx_up)
  instance_deactivate_object(fx_down)
exit;
}
