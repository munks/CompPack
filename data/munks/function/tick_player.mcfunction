# /trigger
execute if score @s ping matches 1.. run function munks:ping/run
execute if score @s ping_remove matches 1.. run function munks:ping/remove_all
execute if score @s help matches 1.. run function munks:help

# on hand
execute if items entity @s weapon.* clock run function munks:clock/run
execute if items entity @s weapon.* #munks:lights anchored eyes run function munks:light/run
execute if items entity @s weapon.* recovery_compass if data entity @s LastDeathLocation run function munks:recovery_compass/run

# on mainhand
execute if items entity @s weapon.mainhand filled_map[!map_decorations={},!consumable] run item modify entity @s weapon.mainhand munks:add_consumable
execute if items entity @s weapon.mainhand suspicious_stew[lore=[]] run function munks:stew_lore/run

# on death
execute if score @s death matches 1.. run function munks:respawn_anchor/run

# press Ctrl+Shift
scoreboard players remove @s[scores={send_cool=1..}] send_cool 1
execute if predicate munks:send_item_message run function munks:send_message/run_item
execute if predicate munks:send_pos_message run function munks:send_message/run_pos

# has left
execute if score @s has_left matches 1.. run function munks:leave_game/run