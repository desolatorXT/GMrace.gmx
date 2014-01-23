user = argument0
invinsible = argument1

if (invincible = 1) then {
    user.invis_counter = user.invis_counter + 1
    if ((user.invis_counter mod 2)=0) then {
        if (user.image_alpha = 1) then {
            user.image_alpha = 0.2
        } else {
            user.image_alpha = 1
        }
    }
    if (user.invis_counter > 60) then {
        user.image_alpha = 1
        user.invis_counter = 0
        user.invincible = 0
    }
}
