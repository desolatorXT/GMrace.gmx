user = argument0
g = global_debugger_OBJ.id

if (user.missile_rd = 0) then {
 user.missile_counter = user.missile_counter + 1
if (user.missile_counter > user.missile_rate) then {
 user.missile_counter = 0
 user.missile_rd = 1
 }
}

if (g.alt_press = 1) then {
 if (user.missile_rd = 1) then {
  if (user.missile_ammo > 0) then {
  instance_create(user.x,user.y,pl_missile_OBJ)
  user.missile_ammo = user.missile_ammo - 1
  user.missile_rd = 0
  user.missile_counter = 0
  } else {
   if (not(audio_is_playing(dong1_SND))) then {
    audio_play_sound(dong1_SND,0,0)
   }
  }
 }
}
