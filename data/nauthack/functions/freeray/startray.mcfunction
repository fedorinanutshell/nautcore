execute positioned ~ ~1.5 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["freeray", "freeray_init"], Invisible: true, Invulnerable: true, NoGravity: true}
execute store result entity @e[tag = freeray_init, type = minecraft:armor_stand, limit = 1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[tag = freeray_init, type = minecraft:armor_stand, limit = 1] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0

execute as @e[tag = freeray_init, type = minecraft:armor_stand] run function nauthack:nautid/setid
execute as @e[tag = freeray_init, type = minecraft:armor_stand] run function nauthack:freeray/allocatedata

tag @e[tag = freeray_init, type = minecraft:armor_stand] remove freeray_init

execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 as @e[type = minecraft:armor_stand, tag = freeray, distance = ..1.5] at @s anchored feet run function nauthack:freeray/raytick