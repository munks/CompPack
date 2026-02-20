tag @s add furnace_display
$rotate @s $(rot) 0.0
$data modify entity @s data.x set value $(x)
$data modify entity @s data.y set value $(y)
$data modify entity @s data.z set value $(z)
execute at @s run tp @s ~0.5 ~0.5 ~0.5
execute at @s run tp @s ^ ^ ^0.6