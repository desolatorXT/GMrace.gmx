user = argument0
spd = argument1
g = global_debugger_OBJ.id

// FOR FUCK'S SAKE MAN, LEARN SOME VECTOR MATH ALREADY, I'M FUCKING SICK OF
// REWRITING MOVEMENT SHIT FOR YOU!

y_mov = 0
x_mov = 0

if (g.up_press = 1) y_mov--
if (g.down_press = 1) y_mov++

if (g.left_press = 1) x_mov--
if (g.right_press = 1) x_mov++

if (x_mov != 0 || y_mov != 0) user.moving = 1
else user.moving = 0

if (x_mov != 0 && y_mov != 0) norm_factor = 1 / sqrt(2)
else norm_factor = 1

user.x += x_mov * norm_factor * spd
user.y += y_mov * norm_factor * spd

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
