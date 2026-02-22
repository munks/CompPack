# more_ender_chest
scoreboard players set @s munks.ender.idx 0
execute store result score @s munks.player.idx run scoreboard players add cnt munks.player.idx 1
execute store result storage munks:variables player.temp_idx int 1 run scoreboard players get @s munks.player.idx
function munks:loading/data_storage_reset with storage munks:variables player