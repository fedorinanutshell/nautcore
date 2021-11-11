kill @e[tag=nautcast]

summon minecraft:armor_stand ^ ^ ^10 {Tags: ["nautcast"], Invisible: true, Invulnerable: true, NoGravity: true, Marker: true}

execute store result score nautcast_cx nautmath_var run data get entity @s Pos[0] 25.0
execute store result score nautcast_cy nautmath_var run data get entity @s Pos[1] 25.0
execute store result score nautcast_cz nautmath_var run data get entity @s Pos[2] 25.0

execute store result score nautcast_dx nautmath_var run data get entity @e[tag=nautcast, limit=1, sort=nearest] Pos[0] 25.0
execute store result score nautcast_dy nautmath_var run data get entity @e[tag=nautcast, limit=1, sort=nearest] Pos[1] 25.0
execute store result score nautcast_dz nautmath_var run data get entity @e[tag=nautcast, limit=1, sort=nearest] Pos[2] 25.0

scoreboard players operation nautcast_dx nautmath_var -= nautcast_cx nautmath_var
scoreboard players operation nautcast_dy nautmath_var -= nautcast_cy nautmath_var
scoreboard players operation nautcast_dz nautmath_var -= nautcast_cz nautmath_var

scoreboard players operation nautcast_dx nautmath_var *= nautcast_mod nautmath_var
scoreboard players operation nautcast_dy nautmath_var *= nautcast_mod nautmath_var
scoreboard players operation nautcast_dz nautmath_var *= nautcast_mod nautmath_var

execute store result storage nauthack:nauthack nautcast.dx double 0.0004 run scoreboard players get nautcast_dx nautmath_var
execute store result storage nauthack:nauthack nautcast.dy double 0.0004 run scoreboard players get nautcast_dy nautmath_var
execute store result storage nauthack:nauthack nautcast.dz double 0.0004 run scoreboard players get nautcast_dz nautmath_var

kill @e[tag=nautcast]