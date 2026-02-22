# 엔더 상자 25,26 아이템이 기능용 아이템이 아닐 시 커서와 교체
# 아무 아이템도 들지 않고 커서에 올렸을 시 air이므로 자동으로 제거됨

execute unless items entity @s enderchest.25 barrier[custom_data={functional_item:true}] run return run item replace entity @s player.cursor from entity @s enderchest.25
execute unless items entity @s enderchest.26 barrier[custom_data={functional_item:true}] run return run item replace entity @s player.cursor from entity @s enderchest.26