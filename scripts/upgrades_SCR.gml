user = argument0
//attack speed upgrades
if (user.attspd_level == 1) then {
 user.fire_rate = 10
}
if (user.attspd_level == 2) then {
 user.fire_rate = 8
}
if (user.attspd_level == 3) then {
 user.fire_rate = 6
}
if (user.attspd_level == 4) then {
 user.fire_rate = 3
}
if (user.attspd_level > 4) then {
 user.attspd_level = 4
}

//power upgrades
if (user.pow_level == 1) then {
 user.damage = 51
}
if (user.pow_level == 2) then {
 user.damage = 65
}
if (user.pow_level == 3) then {
 user.damage = 85
}
if (user.pow_level == 4) then {
 user.damage = 101
}
if (user.pow_level > 4) then {
 user.pow_level = 4
}

//limit missile ammo
if (user.missile_ammo > 9) then {
 user.missile_ammo = 9
}
