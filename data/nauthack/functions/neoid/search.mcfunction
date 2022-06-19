scoreboard players operation neoid_search nautmath_var = @s neoid
tag @e remove neoid_search
execute as @e[tag = neoid_player] if score @s neoid_bind = neoid_search nautmath_var run tag @s add neoid_search