summon text_display ~ ~ ~ {billboard:center,text:"",Tags:[hpbar_display]}
data modify entity @n[type=text_display,distance=..0.1] transformation.translation set value [0.0f,0.3f,0.0f]
ride @n[type=text_display,tag=hpbar_display,distance=..0.1] mount @s