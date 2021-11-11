function nauthack:rmbcheck/check/get

tp @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] ~ 0 ~
kill @e[type=minecraft:villager, tag=rmbcheck_found, limit=1]
tag @s remove rmbcheck