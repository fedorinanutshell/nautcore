scoreboard players operation neoid_reference nautmath_var = @s neoid_bind
scoreboard players set neoid_keep nautmath_var 0
execute as @e[tag = neoid] if score @s neoid = neoid_reference nautmath_var run scoreboard players set neoid_keep nautmath_var 1
execute if score neoid_keep nautmath_var matches 0 run kill @s
execute if score neoid_keep nautmath_var matches 0 run say 0
execute if score neoid_keep nautmath_var matches 1 run say 1