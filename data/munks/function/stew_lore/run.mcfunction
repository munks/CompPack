data modify storage munks:variables stew_lore set from entity @s SelectedItem.components."minecraft:suspicious_stew_effects"[0]
data modify storage munks:variables stew_lore.id set string storage munks:variables stew_lore.id 10
execute store result score duration munks.var run data get storage munks:variables stew_lore.duration
execute store result storage munks:variables stew_lore.duration int 1 run scoreboard players operation duration munks.var /= 20 const
function munks:stew_lore/set_lore with storage munks:variables stew_lore