advancement revoke @s only munks:any_vehicle_riding

execute on vehicle unless data entity @s Health run return fail

execute store result score vd.speed munks.var on vehicle run attribute @s movement_speed get 10000
execute store result score vd.jump munks.var on vehicle run attribute @s jump_strength get 10000
execute store result storage munks:variables vehicle_desc.speed float 0.0001 run scoreboard players get vd.speed munks.var
execute store result storage munks:variables vehicle_desc.jump float 0.0001 run scoreboard players get vd.jump munks.var

title @s actionbar ["이동 속도: ",{nbt:vehicle_desc.speed,storage:"munks:variables"},", 점프력: ",{nbt:vehicle_desc.jump,storage:"munks:variables"}]