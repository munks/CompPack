data modify entity @n[tag=iwv_target,distance=..5] leash.UUID set from entity @s UUID

item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}
tag @n[tag=iwv_target,distance=..5] remove iwv_target