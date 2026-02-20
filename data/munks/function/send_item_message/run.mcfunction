scoreboard players set @s send_cool 100
data remove storage munks:variables sim_data
data modify storage munks:variables sim_data set from entity @s SelectedItem
data modify storage munks:variables sim_data.name set string entity @s SelectedItem.id 10
execute unless data storage munks:variables sim_data.components run data modify storage munks:variables sim_data.components set value {}
function munks:send_item_message/tellraw with storage munks:variables sim_data