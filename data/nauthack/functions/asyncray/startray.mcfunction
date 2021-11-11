execute positioned ~ ~1.5 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags: ["asyncray", "asyncray_init"], Invisible: true, Invulnerable: true, NoGravity: true}
execute store result entity @e[tag=asyncray_init, type=minecraft:armor_stand, limit=1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[tag=asyncray_init, type=minecraft:armor_stand, limit=1] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0

execute as @e[tag=asyncray_init, type=minecraft:armor_stand] run function nauthack:nautid/setid
execute as @e[tag=asyncray_init, type=minecraft:armor_stand] run function nauthack:asyncray/getdata

data modify storage nauthack:nauthack asyncray.databuffer.asyncray.args set from storage nauthack:nauthack asyncray.args
execute store result storage nauthack:nauthack asyncray.databuffer.asyncray.ownerid int 1.0 run scoreboard players get @s nautid_id
execute store result storage nauthack:nauthack asyncray.databuffer.asyncray.power double 0.01 run scoreboard players get asyncray_power nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.asyncray.speed double 0.01 run scoreboard players get asyncray_speed nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.asyncray.acceleration double 0.01 run scoreboard players get asyncray_acceleration nautmath_var

execute as @e[tag=asyncray_init, type=minecraft:armor_stand] run function nauthack:asyncray/storedata

tag @e[tag=asyncray_init, type=minecraft:armor_stand] remove asyncray_init

execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 as @e[type=minecraft:armor_stand, tag=nautray, distance=..1.5] at @s anchored feet run function nauthack:asyncray/raytick