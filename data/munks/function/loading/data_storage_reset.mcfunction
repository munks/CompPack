$data remove storage munks:variables player.$(temp_idx)
$data modify storage munks:variables player.$(temp_idx).ender.0 set value []
$data modify storage munks:variables player.$(temp_idx).ender.1 set value []
$data modify storage munks:variables player.$(temp_idx).ender.2 set value []
$data modify storage munks:variables player.$(temp_idx).ender.3 set value []
$data modify storage munks:variables player.$(temp_idx).ender.1 append from entity @s EnderItems[{Slot:25b}]
$data modify storage munks:variables player.$(temp_idx).ender.1 append from entity @s EnderItems[{Slot:26b}]
$data modify storage munks:variables player.$(temp_idx).ender.1[{Slot:25b}].Slot set value 0b
$data modify storage munks:variables player.$(temp_idx).ender.1[{Slot:26b}].Slot set value 1b
item replace entity @s enderchest.25 with barrier[custom_data={functional_item:true,nofunc:true},tooltip_display={hide_tooltip:true}]
item replace entity @s enderchest.26 with barrier[custom_data={functional_item:true,right:true},item_name="다음 컨테이너로",lore=["현재: 0번 컨테이너"]]