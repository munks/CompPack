execute unless data entity @s LeftOwner run return fail
execute if data entity @s {inGround:1b} run return run tag @s remove guided_arrow
execute as @e[type=!player,type=!armor_stand,type=!item,distance=..7] if data entity @s Health run tag @s add guided_arrow_target
execute if entity @e[tag=guided_arrow_target,distance=..7] run function munks:guided_arrow/activate
tag @e[tag=guided_arrow_target,distance=..7] remove guided_arrow_target