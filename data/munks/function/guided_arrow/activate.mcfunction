rotate @s facing entity @n[tag=guided_arrow_target,distance=..7]
execute at @s positioned ^ ^ ^1.5 summon marker run function munks:guided_arrow/save_pos
execute store result score motion_dx munks.var run data get entity @s Pos[0] 10000
execute store result score motion_dy munks.var run data get entity @s Pos[1] 10000
execute store result score motion_dz munks.var run data get entity @s Pos[2] 10000
scoreboard players operation motion_x munks.var -= motion_dx munks.var
scoreboard players operation motion_y munks.var -= motion_dy munks.var
scoreboard players operation motion_z munks.var -= motion_dz munks.var
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get motion_x munks.var
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get motion_y munks.var
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get motion_z munks.var
tag @s remove guided_arrow