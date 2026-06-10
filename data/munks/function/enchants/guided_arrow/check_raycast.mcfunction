execute as @e[tag=guided_arrow_target_temp,distance=..7,sort=nearest,limit=1] run tag @s add guided_arrow_target_cur
execute unless entity @e[tag=guided_arrow_target_cur,distance=..7] run return fail
execute as @e[tag=guided_arrow_target_cur,distance=..7,limit=1] at @s anchored eyes run summon marker ^ ^ ^ {Tags:[guided_arrow_target_m]}
execute facing entity @e[tag=guided_arrow_target_cur,distance=..7,limit=1] eyes if function munks:enchants/guided_arrow/check_raycast_internal run tag @e[tag=guided_arrow_target_cur,distance=..7] add guided_arrow_target
kill @e[type=marker,tag=guided_arrow_target_m,distance=..7]
execute as @e[tag=guided_arrow_target_cur,distance=..7] run function munks:enchants/guided_arrow/check_raycast_end
function munks:enchants/guided_arrow/check_raycast