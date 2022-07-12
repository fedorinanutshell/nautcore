scoreboard players operation neomenu_player nautmath_var = @s neomenu_player
tag @e remove neomenu_player
execute as @e if score @s neoid = neomenu_player nautmath_var run tag @s add neomenu_player
scoreboard players set @s neomenu_player 0
tellraw @s {"text": "Name: ", "color": "black", "bold": false, "extra": [{"selector": "@e[tag = neomenu_player, limit = 1]", "color": "white", "bold": false}]}
tellraw @s {"text": "Dimension: ", "color": "aqua", "bold": false, "extra": [{"entity": "@e[tag = neomenu_player, limit = 1]", "nbt": "Dimension", "color": "white", "bold": false}]}

execute store result score nauttrack_x1 nautmath_var run data get entity @e[tag = neomenu_player, limit = 1] Pos[0] 1.0
execute store result score nauttrack_y1 nautmath_var run data get entity @e[tag = neomenu_player, limit = 1] Pos[1] 1.0
execute store result score nauttrack_z1 nautmath_var run data get entity @e[tag = neomenu_player, limit = 1] Pos[2] 1.0

execute store result score nauttrack_x2 nautmath_var run data get entity @s Pos[0] 1.0
execute store result score nauttrack_y2 nautmath_var run data get entity @s Pos[1] 1.0
execute store result score nauttrack_z2 nautmath_var run data get entity @s Pos[2] 1.0

scoreboard players operation nauttrack_dx nautmath_var = nauttrack_x2 nautmath_var
scoreboard players operation nauttrack_dy nautmath_var = nauttrack_y2 nautmath_var
scoreboard players operation nauttrack_dz nautmath_var = nauttrack_z2 nautmath_var

scoreboard players operation nauttrack_dx nautmath_var -= nauttrack_x1 nautmath_var
scoreboard players operation nauttrack_dy nautmath_var -= nauttrack_y1 nautmath_var
scoreboard players operation nauttrack_dz nautmath_var -= nauttrack_z1 nautmath_var

scoreboard players operation nauttrack_dx nautmath_var *= nauttrack_dx nautmath_var
scoreboard players operation nauttrack_dy nautmath_var *= nauttrack_dy nautmath_var
scoreboard players operation nauttrack_dz nautmath_var *= nauttrack_dz nautmath_var

scoreboard players operation nauttrack_distance nautmath_var = nauttrack_dx nautmath_var
scoreboard players operation nauttrack_distance nautmath_var += nauttrack_dy nautmath_var
scoreboard players operation nauttrack_distance nautmath_var += nauttrack_dz nautmath_var

scoreboard players operation nautmath_sqrt_base nautmath_var = nauttrack_distance nautmath_var
function nauthack:nautmath/sqrt

execute at @s if entity @e[tag = neomenu_player, limit = 1, distance = 0..] run tellraw @s {"text": "Distance: ", "color": "aqua", "bold": false, "extra": [{"score": {"name": "nautmath_sqrt_result", "objective": "nautmath_var"}, "color": "white", "bold": false}]}