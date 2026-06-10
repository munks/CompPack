scoreboard players reset @s switch_hpbar
scoreboard players enable @s switch_hpbar

execute if score @s munks.enable_hpbar matches 0 run return run function munks:hpbar/activate/enable
execute if score @s munks.enable_hpbar matches 1 run return run function munks:hpbar/activate/disable