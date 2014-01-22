//called by movement_SCR()

spd = argument0
moving = argument1

if (moving = 1) then {
spd = spd + 0.25
} else {
spd = spd - 0.25
}

if (spd < 0) then {
spd = 0
}

if (spd > 3) then {
spd = 3
}

return spd;
