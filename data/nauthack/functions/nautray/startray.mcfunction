execute positioned ~ ~1.5 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["nautray"], Invisible: true, Invulnerable: true, NoGravity: true}
execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 store result entity @e[tag=nautray, type=minecraft:armor_stand, limit=1, sort=nearest] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 store result entity @e[tag=nautray, type=minecraft:armor_stand, limit=1, sort=nearest] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0

tag @e add nautray_raystarted

execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 as @e[type=minecraft:armor_stand, tag=nautray, distance=..1] at @s anchored feet run function nauthack:nautray/raycycle
execute at @s as @e[type=minecraft:armor_stand, limit=1, sort=nearest] at @s run function nauthack:nautray/end