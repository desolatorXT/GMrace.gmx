user = argument0
spd = argument1
g = global_debugger_OBJ.id

// FOR FUCK'S SAKE MAN, LEARN SOME VECTOR MATH ALREADY, I'M FUCKING SICK OF
// REWRITING MOVEMENT SHIT FOR YOU!

dx = g.right_press - g.left_press
dy = g.down_press - g.up_press

// conditional to avoid per-step computations
if (dx != 0 && dy != 0) norm_factor = 0.707106781     // 1 / sqrt(2)
else norm_factor = 1

user.x += dx * norm_factor * spd
user.y += dy * norm_factor * spd

// LOOK AT ALL THIS CRAP FOR FUCK'S SAKE!!!!!!!
/*
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
*/
