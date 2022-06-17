tag @s add neomouse_tracked

scoreboard players operation neomouse_search nautmath_var = @s neoid
tag @e remove neomouse_search
execute as @e[tag = neoid_player] if score @s neoid_bind = neomouse_search nautmath_var run tag @s add neomouse_search
data modify entity @e[tag = neomouse_search, limit = 1] data.neomouse.id set from storage nauthack:nauthack neomouse.id

summon minecraft:villager ^ ^ ^-15 {NoAI: true, NoGravity: true, Silent: true, Offers: {}, Tags: ["neomouse_tracker", "neomouse_init", "neoid_ignore"]}
team join nautcore_nocoll @e[tag = neomouse_init]
scoreboard players operation @e[tag = neomouse_init] neomouse_tracker = @s neoid
tag @e remove neomouse_init