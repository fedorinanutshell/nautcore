#instant rays

tag @s add nautray_raycaster

execute positioned ~ ~1.5 ~ run summon minecraft:armor_stand ^ ^ ^2.5 {Tags: ["nautray"], Invisible: true, Invulnerable: true, NoGravity: true}
execute facing ^ ^ ^1 positioned ~ ~1.5 ~ run tp @e[type = minecraft:armor_stand, tag = nautray, limit = 1, sort = nearest] ^ ^ ^1 ~ ~

execute as @e[type = minecraft:armor_stand, tag = nautray, limit = 1, sort = nearest] at @s anchored feet run function nauthack:nautray/raycycle
execute at @s as @e[type = minecraft:armor_stand, tag = nautray, limit = 1, sort = nearest] at @s run function nauthack:nautray/endray