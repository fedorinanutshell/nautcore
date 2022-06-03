execute store result score neoray_reference nautmath_var run data get entity @s data.neoray.ownerID
execute as @e if score @s neoid = neoray_reference nautmath_var run tag @s add neoray_owner

execute store result score neoray_power nautmath_var run data get entity @s data.neoray.power 1.0
execute store result score neoray_speed nautmath_var run data get entity @s data.neoray.speed 1.0
execute store result score neoray_acceleration nautmath_var run data get entity @s data.neoray.acceleration 1.0

function nauthack:neoray/raytick_recursive

execute store result score neoray_speed nautmath_var run data get entity @s data.neoray.speed 1.0
scoreboard players operation neoray_speed nautmath_var += neoray_acceleration nautmath_var
execute store result entity @s data.neoray.power double 1.0 run scoreboard players get neoray_power nautmath_var
execute store result entity @s data.neoray.speed double 1.0 run scoreboard players get neoray_speed nautmath_var

execute if score neoray_move nautmath_var matches 0 at @s run function nauthack:neoray/endray

tag @e remove neoray_owner