advancement revoke @s only munks:use_end_compass

execute unless data entity @s {Dimension:"minecraft:the_end"} run return run title @s actionbar {translate:"function.munks.end_compass.error",fallback:"현재 차원에서 사용할 수 없습니다."}
execute if data entity @s SelectedItem.components.minecraft:lodestone_tracker run return fail

execute at @s run loot spawn ~ ~ ~ loot munks:end_city_map
execute at @s as @n[type=item,distance=..0.1,nbt={Item:{id:"minecraft:filled_map"}}] run function munks:end_compass/set_data
function munks:end_compass/set_tracker with storage munks:variables end_compass
title @s actionbar ["[",{storage:"munks:variables",nbt:"end_compass.x"},", ",{storage:"munks:variables",nbt:"end_compass.z"},"]"]