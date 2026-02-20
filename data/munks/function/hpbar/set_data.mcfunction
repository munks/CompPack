execute unless predicate munks:has_vehicle run kill @s
execute store result entity @s data.maxHP int 1 on vehicle run attribute @s max_health get
execute store result entity @s data.curHP int 1 on vehicle run data get entity @s Health
execute store result score @s hp.calc.max run data get entity @s data.maxHP
execute store result score @s hp.calc.cur run data get entity @s data.curHP

execute if predicate munks:hp_red run data modify entity @s data.color set value red
execute if predicate munks:hp_gold run data modify entity @s data.color set value gold
execute if predicate munks:hp_green run data modify entity @s data.color set value green

function munks:hpbar/set_text with entity @s data