scoreboard players set @s send_cool 100

execute store result storage munks:variables spm.x int 1 run data get entity @s Pos[0]
execute store result storage munks:variables spm.y int 1 run data get entity @s Pos[1]
execute store result storage munks:variables spm.z int 1 run data get entity @s Pos[2]
execute store result storage munks:variables spm.dim int 1 run data get entity @s Dimension

tellraw @a [{selector:"@s"},": [",{nbt:"spm.x",storage:"munks:variables"},", ",{nbt:"spm.y",storage:"munks:variables"},", ",{nbt:"spm.z",storage:"munks:variables"},"], 차원: ",{nbt:"spm.dim",storage:"munks:variables"}]