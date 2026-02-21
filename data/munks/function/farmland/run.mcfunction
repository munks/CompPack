advancement revoke @s only munks:make_farmland

scoreboard players set raycast munks.var 50
execute store result score @s munks.var at @s anchored eyes run function munks:farmland/raycast
execute unless score @s munks.var matches 1.. run return fail

execute as @n[type=marker,distance=..6,tag=raycast_target] at @s run function munks:farmland/convert