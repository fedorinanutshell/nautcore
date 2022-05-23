summon minecraft:creeper ~ ~ ~ {CustomName: '{"text": "Explosion", "italic": false}', NoAI: true, NoGravity: true, Invulnerable: true, Tags: ["naututils_explode"]}
execute as @e[tag = naututils_explode] store result entity @s ExplosionRadius byte 1.0 run scoreboard players get naututils_explode_power nautmath_var
execute as @e[tag = naututils_explode] if score naututils_explode_silent nautmath_var matches 1 run data modify entity @s Silent set value true
execute as @e[tag = naututils_explode] run data modify entity @s Fuse set value 0s
tag @e[tag = naututils_explode] remove naututils_explode