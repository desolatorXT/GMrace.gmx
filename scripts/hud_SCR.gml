pl = argument0

g = global_debugger_OBJ.id

with (hud_OBJ) {

if (g.player[pl].hp <= 0) then {
 hp_subimage[pl] = 12
}
if (g.player[pl].hp > 0)&&(g.player[pl].hp <= 8) then {
 hp_subimage[pl] = 11
}
if (g.player[pl].hp > 8)&&(g.player[pl].hp <= 16) then {
 hp_subimage[pl] = 10
}
if (g.player[pl].hp > 16)&&(g.player[pl].hp <= 24) then {
 hp_subimage[pl] = 9
}
if (g.player[pl].hp > 24)&&(g.player[pl].hp <= 32) then {
 hp_subimage[pl] = 8
}
if (g.player[pl].hp > 32)&&(g.player[pl].hp <= 40) then {
 hp_subimage[pl] = 7
}
if (g.player[pl].hp > 40)&&(g.player[pl].hp <= 48) then {
 hp_subimage[pl] = 6
}
if (g.player[pl].hp > 48)&&(g.player[pl].hp <= 56) then {
 hp_subimage[pl] = 5
}
if (g.player[pl].hp > 56)&&(g.player[pl].hp <= 64) then {
 hp_subimage[pl] = 4
}
if (g.player[pl].hp > 64)&&(g.player[pl].hp <= 72) then {
 hp_subimage[pl] = 3
}
if (g.player[pl].hp > 72)&&(g.player[pl].hp <= 80) then {
 hp_subimage[pl] = 2
}
if (g.player[pl].hp > 88)&&(g.player[pl].hp <= 96) then {
 hp_subimage[pl] = 1
}
if (g.player[pl].hp >= 96) then {
 hp_subimage[pl] = 0
}
//energy subimage control
if (g.player[pl].energy <= 0) then {
 energy_subimage[pl] = 12
}
if (g.player[pl].energy > 0)&&(g.player[pl].energy <= 8) then {
 energy_subimage[pl] = 11
}
if (g.player[pl].energy > 8)&&(g.player[pl].energy <= 16) then {
 energy_subimage[pl] = 10
}
if (g.player[pl].energy > 16)&&(g.player[pl].energy <= 24) then {
 energy_subimage[pl] = 9
}
if (g.player[pl].energy > 24)&&(g.player[pl].energy <= 32) then {
 energy_subimage[pl] = 8
}
if (g.player[pl].energy > 32)&&(g.player[pl].energy <= 40) then {
 energy_subimage[pl] = 7
}
if (g.player[pl].energy > 40)&&(g.player[pl].energy <= 48) then {
 energy_subimage[pl] = 6
}
if (g.player[pl].energy > 48)&&(g.player[pl].energy <= 56) then {
 energy_subimage[pl] = 5
}
if (g.player[pl].energy > 56)&&(g.player[pl].energy <= 64) then {
 energy_subimage[pl] = 4
}
if (g.player[pl].energy > 64)&&(g.player[pl].energy <= 72) then {
 energy_subimage[pl] = 3
}
if (g.player[pl].energy > 72)&&(g.player[pl].energy <= 80) then {
 energy_subimage[pl] = 2
}
if (g.player[pl].energy > 88)&&(g.player[pl].energy <= 96) then {
 energy_subimage[pl] = 1
}
if (g.player[pl].energy >= 96) then {
 energy_subimage[pl] = 0
}

}
