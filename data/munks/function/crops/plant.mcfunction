$setblock ~ ~ ~ $(type)
execute unless data entity @s Item.count run return run kill @s
execute if data entity @s Item{count:1} run return run kill @s
execute store result score @s munks.var run data get entity @s Item.count
scoreboard players remove @s munks.var 1
execute store result entity @s Item.count int 1 run scoreboard players get @s munks.var