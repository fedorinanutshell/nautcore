execute positioned ~ ~1.5 ~ run summon minecraft:marker ^ ^ ^1 {Tags: ["neoray", "neoray_init"]}
execute store result entity @e[tag = neoray_init, limit = 1] Rotation[0] float 1.0 run data get entity @s Rotation[0] 1.0
execute store result entity @e[tag = neoray_init, limit = 1] Rotation[1] float 1.0 run data get entity @s Rotation[1] 1.0
data modify entity @e[tag = neoray_init, limit = 1] data.neoray.args set from storage nauthack:nauthack neoray.args
execute store result entity @e[tag = neoray_init, limit = 1] data.neoray.ownerID int 1.0 run scoreboard players get @s neoid

execute store result entity @e[tag = neoray_init, limit = 1] data.neoray.power int 1.0 run scoreboard players get neoray_power nautmath_var
execute store result entity @e[tag = neoray_init, limit = 1] data.neoray.speed int 1.0 run scoreboard players get neoray_speed nautmath_var
execute store result entity @e[tag = neoray_init, limit = 1] data.neoray.acceleration int 1.0 run scoreboard players get neoray_acceleration nautmath_var

execute as @e[tag = neoray_init] run function nauthack:neoid/setid

execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 as @e[tag = neoray, distance = ..1.5] at @s anchored feet run function nauthack:neoray/raytick

tag @e remove neoray_init