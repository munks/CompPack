scoreboard players add x munks.var 1
execute if function munks:furnace_display/check_y run return 1
scoreboard players reset y munks.var
execute if score x munks.var matches ..13 positioned ~1 ~ ~ run function munks:furnace_display/check_x