#this is the actual function to start the ray, but... It needs additional arguments

execute positioned ~ ~1.5 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["asyncray", "asyncray_init"], Invisible: true, Invulnerable: true, NoGravity: true}
execute store result entity @e[tag=asyncray_init, type=minecraft:armor_stand, limit=1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[tag=asyncray_init, type=minecraft:armor_stand, limit=1] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0

#this is how we make a space for storing ray's data
execute as @e[tag=asyncray_init, type=minecraft:armor_stand] run function nauthack:nautid/setid
execute as @e[tag=asyncray_init, type=minecraft:armor_stand] run function nauthack:asyncray/allocatedata

tag @e[tag=asyncray_init, type = minecraft:armor_stand] remove asyncray_init

execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 as @e[type=minecraft:armor_stand, tag=nautray, distance=..1.5] at @s anchored feet run function nauthack:asyncray/raytick