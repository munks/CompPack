$execute in $(dim) run forceload add $(x) $(z)
$execute in $(ddim) positioned $(dx) $(dy) $(dz) as @e[type=item,distance=..5] in $(dim) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
$execute in $(ddim) positioned $(dx) $(dy) $(dz) as @e[type=experience_orb,distance=..5] in $(dim) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
$execute in $(dim) positioned $(x) $(y) $(z) run setblock ~ ~ ~ respawn_anchor[charges=1] replace
$execute in $(dim) run forceload remove $(x) $(z)