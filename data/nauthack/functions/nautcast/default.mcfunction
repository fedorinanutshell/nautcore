scoreboard players set nautcast_mod nautmath_var 20
function nauthack:nautcast/cast

execute at @s anchored eyes run summon minecraft:tnt ^ ^ ^1 {Tags: ["nautcast_default"], Motion: [0.0d, 0.0d, 0.0d], Fuse: 40s}

data modify entity @e[tag=nautcast_default, limit=1, sort=nearest] Motion[0] set from storage nauthack:nauthack nautcast.dx
data modify entity @e[tag=nautcast_default, limit=1, sort=nearest] Motion[1] set from storage nauthack:nauthack nautcast.dy
data modify entity @e[tag=nautcast_default, limit=1, sort=nearest] Motion[2] set from storage nauthack:nauthack nautcast.dz

spectate @e[tag=nautcast_default, limit=1, sort=nearest] @s

tag @e[tag=nautcast_default, limit=1, sort=nearest] remove nautcast_default