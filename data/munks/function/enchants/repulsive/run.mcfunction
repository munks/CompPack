tag @s add repulsive_temp
execute if data entity @s equipment.body.components.minecraft:enchantments{"munks:repulsive":1} as @e[type=!player,distance=..1] run damage @s 1 player_attack by @p[tag=repulsive_temp]
execute if data entity @s equipment.body.components.minecraft:enchantments{"munks:repulsive":2} as @e[type=!player,distance=..1.15] run damage @s 2 player_attack by @p[tag=repulsive_temp]
execute if data entity @s equipment.body.components.minecraft:enchantments{"munks:repulsive":3} as @e[type=!player,distance=..1.3] run damage @s 3 player_attack by @p[tag=repulsive_temp]
tag @s remove repulsive_temp