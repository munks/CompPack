execute unless block ~ ~ ~ air positioned ~ ~0.5 ~ run return run function munks:light/run_2

execute if items entity @s weapon.* #munks:light_7 run setblock ~ ~ ~ light[level=7]
execute if items entity @s weapon.* #munks:light_10 run setblock ~ ~ ~ light[level=10]
execute if items entity @s weapon.* #munks:light_14 run setblock ~ ~ ~ light[level=14]
summon marker ~ ~ ~ {Tags:[light_marker]}