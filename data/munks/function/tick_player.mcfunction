## /trigger
execute if score @s ping matches 1.. run function munks:ping/run
execute if score @s ping_remove matches 1.. run function munks:ping/remove_all
execute if score @s help matches 1.. run function munks:help/run
execute if score @s sign matches 1.. run function munks:signature/run
execute if score @s switch_hpbar matches 1.. run function munks:hpbar/activate/switch

## HP Bar
execute if score @s munks.enable_hpbar matches 1 as @e[distance=..50,type=!player,type=!armor_stand,type=!item,type=!experience_orb,predicate=!munks:has_hpbar] if data entity @s Health at @s run function munks:hpbar/create
execute as @e[distance=..50,type=text_display,tag=hpbar_display] run function munks:hpbar/set_data

## on hand
execute if items entity @s weapon.* clock run function munks:clock/run
execute if items entity @s weapon.* #munks:lights anchored eyes run function munks:light/run
execute if items entity @s weapon.* recovery_compass if data entity @s LastDeathLocation run function munks:recovery_compass/run
execute if items entity @s weapon.* compass[custom_data={ore_finder:true}] run function munks:ore_finder/run

## on mainhand
execute if items entity @s weapon.mainhand filled_map[!map_decorations={},!consumable] run item modify entity @s weapon.mainhand munks:add_consumable
execute if items entity @s weapon.mainhand suspicious_stew[lore=[]] run function munks:stew_lore/run

## on death
execute if score @s munks.death matches 1.. run function munks:respawn_anchor/run

## press Ctrl+Shift
scoreboard players remove @s[scores={munks.send_cool=1..}] munks.send_cool 1
execute if predicate munks:send_item_message run function munks:send_message/run_item
execute if predicate munks:send_pos_message run function munks:send_message/run_pos

## has left
execute if score @s munks.has_left matches 1.. run function munks:leave_game/run

## functional items on cursor
execute if items entity @s player.cursor #munks:button[custom_data={functional_item:true}] run return run function munks:more_ender_chest/container_set

## remove unexpected functional items
execute if entity @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{functional_item:true}}}}] run function munks:more_ender_chest/functional_set
execute if items entity @s container.* #munks:button[custom_data={functional_item:true}] run function munks:more_ender_chest/functional_set
execute as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:written_book"}}] if data entity @s Item.components."minecraft:written_book_content"{author:munks} run kill @s