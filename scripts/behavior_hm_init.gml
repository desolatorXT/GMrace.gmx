counter = 15
var missing = 0
for (var i = 0; i < 2; i++)
    if (!instance_exists(orb[(cur+i*3) mod 6])) missing++
if (missing == 2) counter = 0
