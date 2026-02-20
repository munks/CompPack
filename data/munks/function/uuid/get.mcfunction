## UUID Convert
# @s의 UUID를 받아와서 문자열로 변환
# 결과값은 스토리지 munks:variables의 UUID에 저장된다

data remove storage munks:variables UUID

execute store result score UUID.0 munks.var run data get entity @s UUID[0]
execute store result score UUID.1 munks.var run data get entity @s UUID[1]
execute store result score UUID.2 munks.var run data get entity @s UUID[2]
execute store result score UUID.3 munks.var run data get entity @s UUID[3]

#UUID 0
function munks:uuid/get_uuid_numbers {index:0,0:0,1:1,2:2,3:3,4:4,5:5,6:6,7:7}

#UUID 1
function munks:uuid/get_uuid_numbers {index:1,0:8,1:9,2:10,3:11,4:12,5:13,6:14,7:15}

#UUID 2
function munks:uuid/get_uuid_numbers {index:2,0:16,1:17,2:18,3:19,4:20,5:21,6:22,7:23}

#UUID 3
function munks:uuid/get_uuid_numbers {index:3,0:24,1:25,2:26,3:27,4:28,5:29,6:30,7:31}

#UUID (########-####-####-####-############)
function munks:uuid/uuid_combine with storage munks:variables UUID_T