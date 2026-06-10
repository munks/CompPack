$data remove storage munks:variables player.$(temp_idx)
$data modify storage munks:variables player.$(temp_idx).ender.0 set value []
$data modify storage munks:variables player.$(temp_idx).ender.1 set value []
$data modify storage munks:variables player.$(temp_idx).ender.2 set value []
$data modify storage munks:variables player.$(temp_idx).ender.3 set value []
execute if data entity @s EnderItems[{Slot:25b}] at @s summon item run function munks:loading/give_functional_slot_item {slot:25}
execute if data entity @s EnderItems[{Slot:26b}] at @s summon item run function munks:loading/give_functional_slot_item {slot:26}
item replace entity @s enderchest.25 with dark_oak_button[custom_data={functional_item:true},tooltip_display={hide_tooltip:true}]
item replace entity @s enderchest.26 with oak_button[custom_data={functional_item:true},item_name={translate:"function.munks.more_ender_chest.next_container",fallback:"다음 컨테이너로"},lore=[{translate:"function.munks.more_ender_chest.current_container",with:["0"],fallback:"현재: %s번 컨테이너"}],max_stack_size=2]