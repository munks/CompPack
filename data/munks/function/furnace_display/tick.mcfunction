$execute unless block $(x) $(y) $(z) #munks:furnace run return run kill @s

data remove entity @s data.item0
data remove entity @s data.item1
data remove entity @s data.item2
$execute positioned $(x) $(y) $(z) if data block ~ ~ ~ Items[0] run function munks:furnace_display/store_data with block ~ ~ ~ Items[0]
$execute positioned $(x) $(y) $(z) if data block ~ ~ ~ Items[1] run function munks:furnace_display/store_data with block ~ ~ ~ Items[1]
$execute positioned $(x) $(y) $(z) if data block ~ ~ ~ Items[2] run function munks:furnace_display/store_data with block ~ ~ ~ Items[2]
execute unless data entity @s data.item0 run data modify entity @s data.item0 set value barrier
execute unless data entity @s data.item1 run data modify entity @s data.item1 set value barrier
execute unless data entity @s data.item2 run data modify entity @s data.item2 set value barrier
execute unless data entity @s data.count0 run data modify entity @s data.count0 set value 0
execute unless data entity @s data.count1 run data modify entity @s data.count1 set value 0
execute unless data entity @s data.count2 run data modify entity @s data.count2 set value 0
$execute store result entity @s data.cook_time float 0.05 run data get block $(x) $(y) $(z) cooking_time_spent
$execute store result entity @s data.lit_time float 0.05 run data get block $(x) $(y) $(z) lit_time_remaining

function munks:furnace_display/set_text with entity @s data