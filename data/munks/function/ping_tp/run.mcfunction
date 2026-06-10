advancement revoke @s only munks:use_recall_scroll

scoreboard players set ping_tp.0 munks.var -1
scoreboard players set ping_tp.1 munks.var -1
scoreboard players set ping_tp.2 munks.var -1

execute store result score ping_tp.0 munks.var run function munks:ping_tp/distance with storage munks:variables pings[0]
execute store result score ping_tp.1 munks.var run function munks:ping_tp/distance with storage munks:variables pings[1]
execute store result score ping_tp.2 munks.var run function munks:ping_tp/distance with storage munks:variables pings[2]

scoreboard players set ping_tp.var munks.var 0
scoreboard players operation ping_tp.var munks.var > ping_tp.0 munks.var
scoreboard players operation ping_tp.var munks.var > ping_tp.1 munks.var
scoreboard players operation ping_tp.var munks.var > ping_tp.2 munks.var

execute if score ping_tp.var munks.var = ping_tp.0 munks.var run return run function munks:ping_tp/tp_player with storage munks:variables pings[0]
execute if score ping_tp.var munks.var = ping_tp.1 munks.var run return run function munks:ping_tp/tp_player with storage munks:variables pings[1]
execute if score ping_tp.var munks.var = ping_tp.2 munks.var run return run function munks:ping_tp/tp_player with storage munks:variables pings[2]