advancement revoke @s only munks:use_stronghold_map

clear @s map[custom_data={unset_map:true}]
schedule function munks:stronghold_map/remove 5t