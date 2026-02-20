scoreboard players enable @s ping
scoreboard players enable @s ping_remove
scoreboard players enable @s help

attribute @s waypoint_transmit_range base set 0

tellraw @s "CompPack: 설명을 보려면 /trigger help를 입력하세요."

tag @s add loaded

execute as @p[tag=!loaded] run function munks:loading/after_all_loaded