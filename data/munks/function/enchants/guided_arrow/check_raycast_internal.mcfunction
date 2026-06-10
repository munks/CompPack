execute unless block ~ ~ ~ #minecraft:air run return 0
execute positioned ~ ~ ~ if entity @e[tag=guided_arrow_target_m,distance=..0.2] run return 1
execute positioned ^ ^ ^0.05 run return run function munks:enchants/guided_arrow/check_raycast_internal