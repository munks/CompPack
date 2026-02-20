scoreboard players add z munks.var 1
execute if block ~ ~ ~ #munks:furnace unless data block ~ ~ ~ components."minecraft:custom_data" summon marker run return run function munks:furnace_display/set_data
execute if score z munks.var matches ..13 positioned ~ ~ ~1 run function munks:furnace_display/check_z