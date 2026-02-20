advancement revoke @s only munks:interact_with_villager

tag @s add iwv_caster

execute at @s as @n[type=villager,tag=!iwv_checked,distance=..5] run function munks:leash_villager/search_target

execute at @s if entity @n[type=villager,tag=iwv_target,distance=..5] run function munks:leash_villager/lead_target

tag @s remove iwv_caster
execute as @e[type=villager,distance=..5.5] run tag @s remove iwv_checked