data modify storage munks:variables pings append from storage munks:variables pings_temp
$data modify entity @n[type=text_display,tag=last_created_p,distance=..5] text set value "[$(x), $(y), $(z)]"
$tellraw @a [{selector:"@s"},"(ping): [$(x), $(y), $(z)], 차원: $(dim)"]