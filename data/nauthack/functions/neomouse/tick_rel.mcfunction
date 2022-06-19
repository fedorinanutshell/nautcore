function nauthack:neomouse/condition
function #nauthack:neomouse/conditions

scoreboard players operation neomouse_search nautmath_var = @s neoid
tag @e remove neomouse_search
execute as @e[tag = neoid_player] if score @s neoid_bind = neomouse_search nautmath_var run tag @s add neomouse_search
data modify entity @e[tag = neomouse_search, limit = 1] data.neomouse.id set from storage nauthack:nauthack neomouse.id

execute if entity @s[tag = !neomouse_tracked] run scoreboard players set @s neomouse_rclicks 0
execute if entity @s[tag = !neomouse_tracked] run scoreboard players set @s neomouse_lclicks 0
execute if entity @s[tag = neomouse_tracked] run function nauthack:neomouse/tracker

execute if score neomouse nautmath_var matches 0 if entity @s[tag = neomouse_tracked] run function nauthack:neomouse/tracker/remove

execute if score neomouse nautmath_var matches 1 if entity @s[tag = !neomouse_tracked] run function nauthack:neomouse/tracker/add

execute if score @s neomouse_rclicks matches 1.. run function nauthack:neomouse/rexe
execute if score @s neomouse_lclicks matches 1.. run function nauthack:neomouse/lexe