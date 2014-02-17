type = argument0

//extra life
if (type == 1) then {
    audio_play_sound(extra_life_SND,0,0)
}
//hp - energy
if (type == 2) then {
    audio_play_sound(hp_pickup_SND,0,0)
}
//buff
if (type == 3) then {
    audio_play_sound(power_up_SND,0,0)
}
