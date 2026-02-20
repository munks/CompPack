scoreboard players add y munks.var 1
execute if function munks:furnace_display/check_z run return 1
scoreboard players reset z munks.var
execute if score y munks.var matches ..13 positioned ~ ~1 ~ run function munks:furnace_display/check_y