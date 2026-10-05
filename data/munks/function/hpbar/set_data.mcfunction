execute unless predicate munks:has_vehicle run kill @s
execute store result entity @s data.maxHP int 1 on vehicle run attribute @s max_health get
execute store result entity @s data.curHP int 1 on vehicle run data get entity @s Health
execute store result score @s hp.calc.max run data get entity @s data.maxHP
execute store result score @s hp.calc.cur run data get entity @s data.curHP

scoreboard players operation @s hp.calc.tmp = @s hp.calc.cur
scoreboard players operation @s hp.calc.tmp *= 4 const
data modify entity @s data.color set value red
execute if score @s hp.calc.tmp >= @s hp.calc.max run data modify entity @s data.color set value gold
scoreboard players operation @s hp.calc.limit = @s hp.calc.max
scoreboard players operation @s hp.calc.limit *= 3 const
execute if score @s hp.calc.tmp >= @s hp.calc.limit run data modify entity @s data.color set value green

function munks:hpbar/set_text with entity @s data
