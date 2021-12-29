kill @e[tag = nauttrack_pos]
summon minecraft:marker ~ ~ ~ {Tags: ["nautrack_pos"]}

execute store result storage nauthack:nauthack nauttrack.coords.X double 1.0 run data get entity @e[tag = nauttrack_pos, limit = 1] Pos[0] 1.0
execute store result storage nauthack:nauthack nauttrack.coords.Y double 1.0 run data get entity @e[tag = nauttrack_pos, limit = 1] Pos[1] 1.0
execute store result storage nauthack:nauthack nauttrack.coords.Z double 1.0 run data get entity @e[tag = nauttrack_pos, limit = 1] Pos[2] 1.0

execute as @e[tag = nauttrack_pos, limit = 1] store result score nauttrack_x1 nautmath_var run data get entity @s Pos[0] 1.0
execute as @e[tag = nauttrack_pos, limit = 1] store result score nauttrack_y1 nautmath_var run data get entity @s Pos[1] 1.0
execute as @e[tag = nauttrack_pos, limit = 1] store result score nauttrack_z1 nautmath_var run data get entity @s Pos[2] 1.0

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
scoreboard players operation nauttrack_distance nautmath_var = nautmath_sqrt_result nautmath_var

execute store result storage nauthack:nauthack nauttrack.distance double 1.0 run scoreboard players get nauttrack_distance nautmath_var

data modify storage nauthack:nauthack nauttrack.dimension set from entity @e[tag = nauttrack_pos, limit = 1] Dimension
data modify storage nauthack:nauthack nauttrack.isBlock set value true
kill @e[tag = nauttrack_pos, limit = 1]