scoreboard players reset @s help
scoreboard players enable @s help

give @s written_book[written_book_content={author:"munks",title:{raw:"help"},generation:3,pages:[[\
                    {text:"/trigger help",color:dark_gray}, {text:": 이 목록을 표시합니다.",color:black},"\n", \
                    {text:"/trigger ping",color:dark_gray}, {text:": 현재 위치에 핑을 추가합니다. 청크 로딩이 강제로 적용됩니다.",color:black},"\n", \
                    {text:"/trigger ping_remove",color:dark_gray}, {text:": 모든 핑을 제거합니다.",color:black},"\n", \
                    {text:"/trigger sign",color:dark_gray}, {text:": 장비에 이름을 서명합니다.",color:black},"\n", \
                    {text:"/trigger swtich_hpbar",color:dark_gray}, {text:": 체력 표시를 활성화/비활성화 합니다."} \
                    ],[ \
                    {text:"hpbar",color:dark_gray}, {text:": 주위 몹의 체력이 표시됩니다.",color:black},"\n", \
                    {text:"clock",color:dark_gray}, {text:": 시계를 들고 있으면 게임 내 시간이 표시됩니다.",color:black},"\n", \
                    {text:"recovery_compass",color:dark_gray}, {text:": 만회 나침반을 들고 있으면 마지막 사망 위치가 표시됩니다.",color:black},"\n", \
                    {text:"item_message",color:dark_gray}, {text:": Ctrl+Shift 입력 시 현재 들고 있는 아이템을 채팅창에 띄웁니다.",color:black} \
                    ],[ \
                    {text:"pos_message",color:dark_gray}, {text:": 들고 있는 아이템이 없을 때 Ctrl+Shift 입력 시 현재 위치를 채팅창에 띄웁니다.",color:black},"\n", \
                    {text:"map_coord",color:dark_gray}, {text:": 목표가 있는 지도(예: 보물 지도)를 사용하면 대상 위치로 회전합니다",color:black},"\n", \
                    {text:"respawn_anchor",color:dark_gray}, {text:": 최대로 충전된 리스폰 정박기 사용 후 사망 시 아이템을 가져옵니다. 리스폰 정박기의 모든 충전을 사용합니다.",color:black} \
                    ],[ \
                    {text:"light",color:dark_gray}, {text:": 횃불이나 랜턴을 들고 있으면 주위가 밝아집니다.",color:black},"\n", \
                    {text:"stew_lore",color:dark_gray}, {text:": 수상한 스튜를 손에 들면 효과를 알 수 있습니다.",color:black},"\n", \
                    {text:"leash_villager",color:dark_gray}, {text:": 주민을 끈으로 끌고 다닐 수 있습니다.",color:black},"\n", \
                    {text:"vehicle_desc",color:dark_gray}, {text:": 몹 탑승 시 이동 속도와 점프력이 표시됩니다.",color:black},"\n", \
                    {text:"max_stack",color:dark_gray}, {text:": 눈덩이, 엔더 진주, 달걀의 최대 중첩이 64개로 늘어납니다. (일부 제외)",color:black} \
                    ],[ \
                    {text:"more_ender_chest",color:dark_gray}, {text:": 엔더 상자 공간이 4배로 늘어납니다.",color:black},"\n", \
                    {text:"crops",color:dark_gray}, {text:": 빈 경작지에 씨앗을 던지거나 영혼 모래에 네더 사마귀를 던지면 자동으로 심어집니다.",color:black},"\n", \
                    {text:"farmland",color:dark_gray}, {text:": 네더라이트 괭이로 경작지를 만들 시 3x3 공간이 한번에 만들어집니다.",color:black} \
                    ],[ \
                    {text:"loot_table",color:dark_gray}, {text:": 일부 루트 테이블이 수정됩니다.",color:black},"\n", \
                    {text:"  케이크 - 현재 상태 그대로 아이템이 떨어집니다.",color:gray},"\n", \
                    {text:"  근거지 도서관(상자) - 지도와 나침반이 나오지 않습니다.",color:gray} \
                    ],[ \
                    {text:"enchant_change",color:dark_gray}, {text:": 마법 부여가 변경됩니다.",color:black},"\n", \
                    {text:"  가시 - 확률: 30~60%, 피해: 2~5, 내구도 감소 제거",color:gray},"\n", \
                    {text:"  찌르기 - 물에 있거나 비를 맞고 있는 몹에게 적용",color:gray},"\n", \
                    {text:"  화염 - 석궁에 적용 가능 및 마법 부여대에서 나타남",color:gray},"\n", \
                    {text:"  날카로움 - 효율과 같은 효과를 가짐, 효율과 중복 불가",color:gray},"\n", \
                    {text:"  도끼 - 살충, 발화, 밀치기, 약탈, 날카로움, 강타가 적용 가능하고 마법 부여대에서 나타남",color:gray} \
                    ],[ \
                    {text:"enchant_add",color:dark_gray}, {text:": 마법 부여가 추가됩니다.",color:black},"\n", \
                    {text:"  유도 - 적용: 활/석궁, 발사된 화살이 근처 몹에게 유도됨, 무한, 수선과 중복 부여 불가",color:gray},"\n", \
                    {text:"  제련 - 보물, 적용: 곡괭이/도끼/삽, 블럭을 캘 시 구워진 상태로 떨어짐",color:gray} \
                    ],[ \
                    {text:"more_recipe",color:dark_gray}, {text:": 레시피가 추가됩니다.",color:black},"\n", \
                    {text:"자수정 블록",color:gray},"\n", {text:"  > 자수정 조각(4)",color:gray},"\n", \
                    {text:"네더라이트 잔해(4), 나침반",color:gray},"\n", {text:"  > 고대 나침반",color:gray},"\n", \
                    {text:"프리즈머린",color:gray},"\n", {text:"  > 프리즈머린 조각(4)",color:gray},"\n", \
                    {text:"석영 블록",color:gray},"\n", {text:"  > 네더 석영(4)",color:gray},"\n", \
                    {text:"눈 블럭",color:gray},"\n", {text:"  > 눈덩이(4)",color:gray},"\n", \
                    {text:"유리(4)",color:gray},"\n", {text:"  > 유리병(4)",color:gray}\
                    ],[ \
                    {text:"비트(8), 그릇",color:gray},"\n", {text:"  > 비트 수프(u)",color:gray},"\n", \
                    {text:"금 블록(8), 사과",color:gray},"\n", {text:"  > 마법이 부여된 황금 사과",color:gray},"\n", \
                    {text:"깃털, 에메랄드(3), 종이(3)",color:gray},"\n", {text:"  > 귀환서",color:gray},"\n", \
                    {text:"모든 가죽 레시피에 토끼 가죽을 대신 사용 가능합니다.",color:gray},"\n", \
                    ],[ \
                    {text:"villager_trade",color:dark_gray}, {text:": 주민 거래가 조정됩니다.",color:black},"\n", \
                    {text:"  지도 제작자 - 3레벨: 나침반 거래 제거, 5레벨: 근거지 지도 거래 추가",color:gray},"\n", \
                    {text:"  사서 - 1레벨: 책장 거래 제거, 4레벨: 시계 거래 제거",color:gray},"\n", \
                    {text:"  석공 - 3레벨: 에메랄드를 암석으로 바꾸는 거래 제거, 4레벨: 테라코타 거래 추가, 나머지 테라코타 거래 제거",color:gray},"\n", \
                    ]\
                    ],resolved:true}]