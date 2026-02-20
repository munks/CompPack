advancement revoke @s only munks:place_furnace
return fail
scoreboard players reset x munks.var
scoreboard players reset y munks.var
scoreboard players reset z munks.var
execute at @s align xyz positioned ~-6 ~-6 ~-6 run function munks:furnace_display/check_x