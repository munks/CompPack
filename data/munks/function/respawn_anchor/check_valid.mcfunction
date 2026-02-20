$execute in $(dim) run forceload add $(x) $(z)
$execute in $(dim) if block $(x) $(y) $(z) respawn_anchor[charges=4] run return 1
return 0