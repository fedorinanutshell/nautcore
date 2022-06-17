tag @s remove neomouse_tracked

scoreboard players operation neomouse_search nautmath_var = @s neoid
tag @e remove neomouse_search
execute as @e[tag = neomouse_tracker] if score @s neomouse_tracker = neomouse_search nautmath_var run tag @s add neomouse_search

execute in nauthack:blackworld_players run tp @e[tag = neomouse_search] 0 0 0
kill @e[tag = neomouse_search]