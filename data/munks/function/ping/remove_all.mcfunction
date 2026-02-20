scoreboard players reset @s ping_remove
scoreboard players enable @s ping_remove
execute store result score @s munks.var run data get storage munks:variables pings
tellraw @s [{score:{name:"@s",objective:"munks.var"}},"개의 핑이 제거되었습니다."]
execute if data storage munks:variables pings[0] run function munks:ping/remove_old with storage munks:variables pings[0]
execute if data storage munks:variables pings[0] run function munks:ping/remove_old with storage munks:variables pings[0]
execute if data storage munks:variables pings[0] run function munks:ping/remove_old with storage munks:variables pings[0]
execute if data storage munks:variables pings[0] run function munks:ping/remove_old with storage munks:variables pings[0]