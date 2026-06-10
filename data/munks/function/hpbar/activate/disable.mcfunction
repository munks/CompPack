scoreboard players set @s munks.enable_hpbar 0
execute as @e[type=text_display,tag=hpbar_display] run kill @s
tellraw @s {translate:"ui.munks.hpbar.deactivate",fallback:"체력 바 비활성화"}