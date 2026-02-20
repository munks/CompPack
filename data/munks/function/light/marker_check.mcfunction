execute unless block ~ ~ ~ light run return run kill @s
execute if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute if block ~ ~ ~ light[waterlogged=false] run setblock ~ ~ ~ air

kill @s