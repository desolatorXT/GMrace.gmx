user = argument0
spd = argument1
g = global_debugger_OBJ.id

if (g.up_press = 1) then {
 up_mov = 1
} else {up_mov = 0}

if (g.down_press = 1) then {
 down_mov = -1
} else {down_mov = 0}

if (g.left_press = 1) then {
 left_mov = 1
} else {left_mov = 0}

if (g.right_press = 1) then {
 right_mov = -1
} else {right_mov = 0}

vert_mov = up_mov + down_mov
hor_mov = left_mov + right_mov

if (vert_mov != 0)or(hor_mov != 0) then {
 user.moving = 1
} else {user.moving = 0}

spd = 3


if (vert_mov = 1)&&(hor_mov = 0) then {
user.y = user.y - spd
exit;
}
if (vert_mov = -1)&&(hor_mov = 0) then {
user.y = user.y + spd
exit;
}

if (hor_mov = 1)&&(vert_mov = 0) then {
user.x = user.x - spd
exit;
}
if (hor_mov = -1)&&(vert_mov = 0) then {
user.x = user.x + spd
exit;
}

if (vert_mov = 1) && (hor_mov = -1) then {
user.y = user.y - abs(spd*sin(degtorad(45)))
user.x = user.x + abs(spd*cos(degtorad(45)))
exit;
}

if (vert_mov = 1) && (hor_mov = 1) then {
user.y = user.y - abs(spd*sin(degtorad(45)))
user.x = user.x - abs(spd*cos(degtorad(45)))
exit;
}

if (vert_mov = -1) && (hor_mov = 1) then {
user.y = user.y + abs(spd*sin(degtorad(45)))
user.x = user.x - abs(spd*cos(degtorad(45)))
exit;
}

if (vert_mov = -1) && (hor_mov = -1) then {
user.y = user.y + abs(spd*sin(degtorad(45)))
user.x = user.x + abs(spd*cos(degtorad(45)))
exit;
}
