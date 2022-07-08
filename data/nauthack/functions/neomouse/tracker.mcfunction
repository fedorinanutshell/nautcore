scoreboard players operation neomouse_search nautmath_var = @s neoid
tag @e remove neomouse_search
execute as @e[tag = neomouse_tracker] if score @s neomouse_tracker = neomouse_search nautmath_var run tag @s add neomouse_search

tp @e[tag = neomouse_search] ^ ^ ^1

effect give @e[tag = neomouse_search] minecraft:invisibility 999999 0 true
effect give @e[tag = neomouse_search] minecraft:resistance 999999 4 true
effect give @e[tag = neomouse_search] minecraft:fire_resistance 999999 0 true