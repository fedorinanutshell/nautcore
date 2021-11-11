kill @e[type=minecraft:armor_stand, tag=nautspawn]
summon minecraft:armor_stand ~ 64 ~ {Tags: ["nautspawn"], Invisible: true, Invulnerable: true, NoGravity: true}
execute as @e[type=minecraft:armor_stand, tag=nautspawn, limit=1, sort=nearest] at @s run function nauthack:nautspawn/setspawn_recursive
execute as @e[type=minecraft:armor_stand, tag=nautspawn, limit=1, sort=nearest] at @s run function nauthack:nautspawn/setspawn_stop