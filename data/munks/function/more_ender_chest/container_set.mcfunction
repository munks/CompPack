# 커서 아이템 감지
scoreboard players reset @s munks.var
execute if items entity @s player.cursor barrier[max_stack_size=1] run scoreboard players set @s munks.var 1
execute if items entity @s player.cursor barrier[max_stack_size=2] run scoreboard players set @s munks.var 2
function munks:more_ender_chest/replace_cursor

# 기능 아이템 제거
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

## 커서 아이템이 아무 기능 없을 시 종료
execute unless score @s munks.var matches 1..2 run return run function munks:more_ender_chest/functional_set

# 현재 엔더 상자 저장
execute store result storage munks:variables player.idx int 1 run scoreboard players get @s munks.player.idx
execute store result storage munks:variables player.container int 1 run scoreboard players get @s munks.ender.idx
function munks:more_ender_chest/store_container with storage munks:variables player

# 엔더 상자 인덱스 변경
execute if score @s munks.var matches 1 run scoreboard players remove @s munks.ender.idx 1
execute if score @s munks.var matches 2 run scoreboard players add @s munks.ender.idx 1

# 변경된 엔더 상자 아이템 불러오기
execute store result storage munks:variables player.container int 1 run scoreboard players get @s munks.ender.idx
function munks:more_ender_chest/restore_container with storage munks:variables player

# 기능 아이템 추가
function munks:more_ender_chest/functional_set