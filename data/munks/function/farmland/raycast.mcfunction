execute if score raycast munks.var matches ..0 run return 0
execute if block ~ ~ ~ farmland summon marker run return run tag @s add raycast_target
scoreboard players remove raycast munks.var 1
execute positioned ^ ^ ^0.1 run function munks:farmland/raycast