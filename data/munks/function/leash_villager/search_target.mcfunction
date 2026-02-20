tag @s add iwv_checked
tag @s add iwv_target

execute as @a[tag=iwv_caster] if predicate munks:interact_test run return fail

tag @s remove iwv_target
execute as @n[type=villager,tag=!iwv_checked,distance=..5] run function munks:leash_villager/search_target