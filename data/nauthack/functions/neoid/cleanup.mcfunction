execute as @e[tag = neoid_bound, tag = !neoid_selfbound] if data entity @s data.isPlayer run function nauthack:neoid/cleanup_relative

execute in nauthack:blackworld_neoid run forceload remove -1 -1 0 0