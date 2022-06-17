scoreboard players set @s neomouse_rclicks 0

scoreboard players operation neomouse_search nautmath_var = @s neoid
tag @e remove neomouse_search
execute as @e[tag = neoid_player] if score @s neoid_bind = neomouse_search nautmath_var run tag @s add neomouse_search
data modify storage nauthack:nauthack neomouse.id set from entity @e[tag = neomouse_search, limit = 1] data.neomouse.id

function #nauthack:neomouse/rexe