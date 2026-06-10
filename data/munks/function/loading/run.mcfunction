scoreboard players enable @s ping
scoreboard players enable @s ping_remove
scoreboard players enable @s help
scoreboard players enable @s sign
scoreboard players enable @s switch_hpbar
scoreboard players set @s munks.send_cool 0
execute unless score @s munks.enable_hpbar matches 0 run scoreboard players set @s munks.enable_hpbar 1
execute unless score @s munks.player.idx matches 1.. run function munks:loading/data_storage_init

attribute @s waypoint_transmit_range base set 0

tellraw @s {translate:"ui.munks.loading",fallback:"CompPack: 설명을 보려면 /trigger help를 입력하세요."}

tag @s add loaded

execute as @p[tag=!loaded] run function munks:loading/run