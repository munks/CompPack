scoreboard players reset @s sign
scoreboard players enable @s sign

scoreboard players reset @s munks.var
execute unless items entity @s weapon.mainhand * run return run tellraw @s {text:"signature: 아이템이 없습니다.",color:red}
execute unless items entity @s weapon.mainhand *[!weapon] run scoreboard players set @s munks.var 1
execute unless items entity @s weapon.mainhand *[!tool] run scoreboard players set @s munks.var 1
execute unless items entity @s weapon.mainhand *[!equippable] run scoreboard players set @s munks.var 1
execute unless score @s munks.var matches 1 run return run tellraw @s {text:"signature: 해당 아이템에는 서명이 불가능합니다.",color:red}
execute if data entity @s SelectedItem.components."minecraft:custom_data"{signature:true} run return run tellraw @s {text:"signature: 이미 서명된 아이템입니다.",color:red}

item modify entity @s weapon.mainhand munks:set_signature