scoreboard players reset @s ping
scoreboard players enable @s ping

execute store result score @s munks.var run forceload query ~ ~
execute if score @s munks.var matches 1.. run return run tellraw @s {text:"현재 청크에 이미 핑이 존재합니다.",color:red}
execute if entity @e[tag=ping_entity,distance=..8] run return run tellraw @s {text:"근처에 이미 핑이 존재합니다.",color:red}

execute if data storage munks:variables pings[2] run function munks:ping/remove_old with storage munks:variables pings[0]

execute store result storage munks:variables pings_temp.x int 10 run data get entity @s Pos[0]
execute store result storage munks:variables pings_temp.y int 10 run data get entity @s Pos[1]
execute store result storage munks:variables pings_temp.z int 10 run data get entity @s Pos[2]
execute store result storage munks:variables pings_temp.x float 0.1 run data get storage munks:variables pings_temp.x
execute store result storage munks:variables pings_temp.y float 0.1 run data get storage munks:variables pings_temp.y
execute store result storage munks:variables pings_temp.z float 0.1 run data get storage munks:variables pings_temp.z

summon armor_stand ~ ~ ~ {Tags:[last_created_p],Invisible:true,Marker:true,attributes:[{id:"waypoint_transmit_range",base:500000},{id:"scale",base:0.0625}]}
summon item_display ~ ~ ~ {Tags:[last_created_p],item:{id:"minecraft:emerald"},billboard:center}
summon text_display ~ ~ ~ {Tags:[last_created_p],billboard:center}

data modify entity @n[type=item_display,tag=last_created_p,distance=..5] transformation.translation set value [0.0f,1.0f,0.0f]
data modify entity @n[type=item_display,tag=last_created_p,distance=..5] transformation.scale set value [0.5f,0.5f,0.5f]
data modify entity @n[type=text_display,tag=last_created_p,distance=..5] transformation.translation set value [0.0f,1.5f,0.0f]

ride @n[type=text_display,tag=last_created_p,distance=..5] mount @n[type=item_display,tag=last_created_p,distance=..5]
ride @n[type=item_display,tag=last_created_p,distance=..5] mount @n[type=armor_stand,tag=last_created_p,distance=..5]

data modify storage munks:variables pings_temp.dim set string entity @s Dimension 10

function munks:ping/set_ping_data with storage munks:variables pings_temp
execute as @e[distance=..5,tag=last_created_p] run function munks:ping/set_entity_data

forceload add ~ ~