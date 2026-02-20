execute store result score daytime munks.var run time query daytime
scoreboard players operation milisec munks.var = daytime munks.var
scoreboard players operation milisec munks.var %= 20 const
scoreboard players operation daytime munks.var /= 20 const
scoreboard players operation min munks.var = daytime munks.var
scoreboard players operation sec munks.var = daytime munks.var
execute store result storage munks:variables time.min int 1 run scoreboard players operation min munks.var /= 60 const
execute store result storage munks:variables time.sec int 1 run scoreboard players operation sec munks.var %= 60 const
execute if score sec munks.var matches 10.. run data modify storage munks:variables time.zero set value ""
execute if score sec munks.var matches ..9 run data modify storage munks:variables time.zero set value "0"
execute store result storage munks:variables time.milisec int 1 run scoreboard players operation milisec munks.var *= 5 const

execute as @e[type=!player,type=!armor_stand,type=!item] if data entity @s Health at @s run function munks:hpbar/set_bar
execute as @e[type=text_display,tag=hpbar_display,predicate=!munks:has_vehicle] run kill @s

execute as @e[type=marker,tag=light_marker] at @s run function munks:light/marker_check
execute as @a at @s run function munks:tick_internal

execute as @e[type=#arrows,tag=guided_arrow] at @s run function munks:guided_arrow/tick