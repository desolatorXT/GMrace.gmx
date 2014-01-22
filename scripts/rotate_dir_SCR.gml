target = argument0
current = argument1

if (abs(target-current) < 5) then {
 current = target
 return current;
}

if (target > current) then {
 current = current + 1
}

if (target < current) then {
 current = current - 1
}

if (target == current) then {
 current = current
}

if (current > 360) then {
 current = current - 360
}
if (current < 0) then {
 current = current + 360
}

return current;
