user = argument0

if (user.invincible == 1) then {
    user.inv_counter++
    if ((user.inv_counter mod 2)==0) then {
        if (user.image_alpha == 1) then {
            user.image_alpha = 0.2
        } else {
            user.image_alpha = 1
        }
    }
    if (user.inv_counter > 60) then {
        user.image_alpha = 1
        user.inv_counter = 0
        user.invincible = 0
    }
}
