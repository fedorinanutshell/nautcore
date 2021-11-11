scoreboard players operation asyncray_speed nautmath_var -= 100 nautmath_var
scoreboard players operation asyncray_power nautmath_var -= 100 nautmath_var

function #nauthack:asyncray/effect
function nauthack:asyncray/condition
function #nauthack:asyncray/condition

execute if score asyncray_move nautmath_var matches 1 unless score asyncray_speed nautmath_var matches ..0 run tp @s ^ ^ ^1
execute if score asyncray_move nautmath_var matches 1 unless score asyncray_speed nautmath_var matches ..0 at @s run function nauthack:asyncray/raytick_recursive