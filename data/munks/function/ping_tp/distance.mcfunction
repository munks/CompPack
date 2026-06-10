execute store result score distance.start_x munks.var run data get entity @s Pos[0] 10
execute store result score distance.start_y munks.var run data get entity @s Pos[1] 10
execute store result score distance.start_z munks.var run data get entity @s Pos[2] 10
$scoreboard players set distance.end_x munks.var $(x)
$scoreboard players set distance.end_y munks.var $(y)
$scoreboard players set distance.end_z munks.var $(z)
scoreboard players operation distance.end_x munks.var *= 10 const
scoreboard players operation distance.end_y munks.var *= 10 const
scoreboard players operation distance.end_z munks.var *= 10 const
scoreboard players operation distance.start_x munks.var -= distance.end_x munks.var
scoreboard players operation distance.start_y munks.var -= distance.end_y munks.var
scoreboard players operation distance.start_z munks.var -= distance.end_z munks.var
execute store result storage munks:variables distance.x float 0.1 run scoreboard players get distance.start_x munks.var
execute store result storage munks:variables distance.y float 0.1 run scoreboard players get distance.start_y munks.var
execute store result storage munks:variables distance.z float 0.1 run scoreboard players get distance.start_z munks.var

execute positioned 0 0 0 summon block_display run function munks:ping_tp/distance_get with storage munks:variables distance
$execute unless dimension $(dim) run return -1
return run data get storage munks:variables ping_tp.temp