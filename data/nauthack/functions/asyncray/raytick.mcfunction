#executes every tick relative to every active ray

function nauthack:asyncray/getdata

execute store result score asyncray_power nautmath_var run data get storage nauthack:nauthack asyncray.databuffer.power 100.0
execute store result score asyncray_speed nautmath_var run data get storage nauthack:nauthack asyncray.databuffer.speed 100.0
execute store result score asyncray_acceleration nautmath_var run data get storage nauthack:nauthack asyncray.databuffer.acceleration 100.0

function nauthack:asyncray/raytick_recursive

execute store result score asyncray_speed nautmath_var run data get storage nauthack:nauthack asyncray.databuffer.speed 100.0
scoreboard players operation asyncray_speed nautmath_var += asyncray_acceleration nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.power double 0.01 run scoreboard players get asyncray_power nautmath_var
execute store result storage nauthack:nauthack asyncray.databuffer.speed double 0.01 run scoreboard players get asyncray_speed nautmath_var

function nauthack:asyncray/storedata

execute if score asyncray_move nautmath_var matches 0 run function nauthack:asyncray/endray