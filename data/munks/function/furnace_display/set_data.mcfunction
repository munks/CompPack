tag @s add furnace_display_tm
data modify block ~ ~ ~ components."minecraft:custom_data".furnace_display_created set value true
execute if block ~ ~ ~ #munks:furnace[facing=north] run rotate @s -180.0 0.0
execute if block ~ ~ ~ #munks:furnace[facing=east] run rotate @s -90.0 0.0
execute if block ~ ~ ~ #munks:furnace[facing=south] run rotate @s 0.0 0.0
execute if block ~ ~ ~ #munks:furnace[facing=west] run rotate @s 90.0 0.0
execute store result entity @s data.x int 1 run data get entity @s Pos[0]
execute store result entity @s data.y int 1 run data get entity @s Pos[1]
execute store result entity @s data.z int 1 run data get entity @s Pos[2]
data modify entity @s data.rot set from entity @s Rotation[0]
execute rotated as @s summon text_display run function munks:furnace_display/create_display with entity @n[type=marker,tag=furnace_display_tm,distance=..3] data
kill @s
return 1