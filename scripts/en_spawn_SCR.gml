level = argument0
counter = argument1
stop = argument2

g = enemy_ctrl_OBJ.id

if (stop = 1) then {
exit;
}

if (level = 1) then  {
if (counter == 120) then {
  g.alarm[0] = 1
 }
if ((counter mod 500)==0) then {
  g.alarm[7] = 1
 }
if ((counter mod 300)==0) then {
  g.alarm[0] = 1
 }
if ((counter mod 450)==0) then {
  g.alarm[0] = 1
 }
if ((counter mod 610)==0) then {
  g.alarm[1] = 1
 }
if ((counter mod 750)==0) then {
  g.alarm[0] = 1
 }
if ((counter mod 600)==0) then {
  g.alarm[2] = 1
 }
if ((counter mod 850)==0) then {
  g.alarm[4] = 1
 }
if ((counter mod 800)==0) then {
  g.alarm[3] = 1
 }
if (counter == 2499) or (counter == 4999) then {
  g.alarm[5] = 1
 }
/* if ((counter mod 999)==0) then {
  g.alarm[6] = 1
 } */
 
}
