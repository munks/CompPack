scoreboard players reset @s help
scoreboard players enable @s help

tellraw @s [{text:"/trigger help",color:yellow}, {text:": 이 목록을 표시합니다.",color:white}]
tellraw @s [{text:"/trigger ping",color:yellow}, {text:": 현재 위치에 핑을 추가합니다. 청크 로딩이 강제로 적용됩니다.",color:white}]
tellraw @s [{text:"/trigger ping_remove",color:yellow}, {text:": 모든 핑을 제거합니다.",color:white}]
tellraw @s [{text:"clock",color:yellow}, {text:": 시계를 들고 있으면 게임 내 시간이 표시됩니다.",color:white}]
tellraw @s [{text:"item_message",color:yellow}, {text:": Ctrl+Shift 입력 시 현재 들고 있는 아이템을 채팅창에 띄웁니다.",color:white}]
tellraw @s [{text:"hpbar",color:yellow}, {text:": 주위 몹의 체력이 표시됩니다.",color:white}]
tellraw @s [{text:"light",color:yellow}, {text:": 횃불이나 랜턴을 들고 있으면 주위가 밝아집니다.",color:white}]
tellraw @s [{text:"map_coord",color:yellow}, {text:": 목표가 있는 지도(예: 보물 지도)를 사용하면 대상 위치로 회전합니다",color:white}]
tellraw @s [{text:"respawn_anchor",color:yellow}, {text:": 최대로 충전된 리스폰 정박기 사용 후 사망 시 아이템을 가져옵니다. 리스폰 정박기의 모든 충전을 사용합니다.",color:white}]
tellraw @s [{text:"stew_lore",color:yellow}, {text:": 수상한 스튜를 손에 들면 효과를 알 수 있습니다.",color:white}]
tellraw @s [{text:"leash_villager",color:yellow}, {text:": 주민을 끈으로 끌고 다닐 수 있습니다.",color:white}]
tellraw @s [{text:"vehicle_desc",color:yellow}, {text:": 몹 탑승 시 이동 속도와 점프력이 표시됩니다.",color:white}]
tellraw @s [{text:"max_stack",color:yellow}, {text:": 눈덩이, 엔더 진주, 달걀의 최대 중첩이 64개로 늘어납니다. (일부 제외)",color:white}]
tellraw @s [{text:"guided_arrow",color:yellow}, {text:": 마법 부여(보물, 활/석궁), 발사된 화살이 근처 몹에게 유도됨, 무한과 중복 부여 불가",color:white}]
tellraw @s [{text:"smelting",color:yellow}, {text:": 마법 부여(보물, 곡괭이/도끼), 블럭을 캘 시 구워진 상태로 떨어짐",color:white}]
tellraw @s [{text:"enchant",color:yellow}, {text:": 마법 부여가 변경됩니다.\n",color:white}, \
[{color:gray,text:"     가시 - 확률: 30~60%, 피해: 2~5, 내구도 감소 제거\n"}, \
                    "     찌르기 - 물에 있거나 비를 맞고 있는 몹에게도 적용\n", \
                    "     화염 - 석궁에 적용 가능하고 마법 부여대에서 나타남\n", \
                    "     날카로움 - 효율과 같은 효과를 가짐, 효율과 중복 부여 불가", \
                    "     도끼 - 살충, 발화, 밀치기, 약탈, 날카로움, 강타가 적용 가능하고 마법 부여대에서 나타남",]]
tellraw @s [{text:"more_recipe",color:yellow}, {text:": 레시피가 추가됩니다.\n",color:white}, \
[{color:gray,text:"     자수정 블럭을 자수정 조각 4개로 변환 가능합니다.\n"}, \
                    "     프리즈머린을 프리즈머린 조각 4개로 변환 가능합니다.\n", \
                    "     눈 블럭을 눈덩이 4개로 변환 가능합니다.\n", \
                    "     유리 4개로 유리병 4개를 만들 수 있습니다.\n", \
                    "     엔더의 눈 8개와 지도로 근거지 지도를 만들 수 있습니다.\n", \
                    "     비트 8개와 그릇으로 강화된 비트 수프를 만들 수 있습니다.\n", \
                    "     모든 가죽 레시피에 토끼 가죽을 대신 사용 가능합니다."]]