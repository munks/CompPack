execute if data entity @s {Dimension:"minecraft:overworld",LastDeathLocation:{dimension:"minecraft:overworld"}} run return run function munks:recovery_compass/display
execute if data entity @s {Dimension:"minecraft:the_end",LastDeathLocation:{dimension:"minecraft:the_end"}} run return run function munks:recovery_compass/display
execute if data entity @s {Dimension:"minecraft:the_nether",LastDeathLocation:{dimension:"minecraft:the_nether"}} run return run function munks:recovery_compass/display
title @s actionbar "현재 차원에서 위치를 찾을 수 없습니다."