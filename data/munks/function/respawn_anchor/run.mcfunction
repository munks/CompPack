scoreboard players reset @s death

data modify storage munks:variables pos_ra.x set from entity @s respawn.pos[0]
data modify storage munks:variables pos_ra.y set from entity @s respawn.pos[1]
data modify storage munks:variables pos_ra.z set from entity @s respawn.pos[2]
data modify storage munks:variables pos_ra.dim set from entity @s respawn.dimension

execute store result score @s munks.var run function munks:respawn_anchor/check_valid with storage munks:variables pos_ra
execute unless score @s munks.var matches 1 run return run function munks:respawn_anchor/forceload_deactive with storage munks:variables pos_ra

data modify storage munks:variables pos_ra.dx set from entity @s LastDeathLocation.pos[0]
data modify storage munks:variables pos_ra.dy set from entity @s LastDeathLocation.pos[1]
data modify storage munks:variables pos_ra.dz set from entity @s LastDeathLocation.pos[2]
data modify storage munks:variables pos_ra.ddim set from entity @s LastDeathLocation.dimension

function munks:respawn_anchor/activate with storage munks:variables pos_ra