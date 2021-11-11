function nauthack:rmbcheck/check/get

tp @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] ^ ^ ^1
effect give @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] minecraft:resistance 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] minecraft:regeneration 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] minecraft:speed 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_found, limit=1] minecraft:invisibility 999999 9 true
execute if score @s rmbcheck_clicks matches 1.. run function #nauthack:rmbcheck/exe