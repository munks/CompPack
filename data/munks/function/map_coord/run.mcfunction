advancement revoke @s only munks:use_filled_map

execute at @s unless dimension minecraft:overworld run return run tellraw @s "map_coord: 현재 차원에서는 작동하지 않습니다."
execute at @s run function munks:map_coord/rotate_player with entity @s SelectedItem.components."minecraft:map_decorations".+