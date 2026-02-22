scoreboard players remove loop munks.var 1
execute unless score loop munks.var matches 0..
function munks:more_ender_chest/restore_container_id with storage munks:variables player.execute_data[0]
execute if data storage munks:variables player.execute_data[0].count run function munks:more_ender_chest/restore_container_count with storage munks:variables player.execute_data[0]
execute if data storage munks:variables player.execute_data[0].components run function munks:more_ender_chest/restore_container_components with storage munks:variables player.execute_data[0]
data remove storage munks:variables player.execute_data[0]
function munks:more_ender_chest/restore_container_loop