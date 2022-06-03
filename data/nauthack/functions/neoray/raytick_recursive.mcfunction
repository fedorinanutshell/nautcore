scoreboard players operation neoray_speed nautmath_var -= 25 nautmath_var
scoreboard players operation neoray_power nautmath_var -= 25 nautmath_var

function nauthack:neoray/condition
function #nauthack:neoray/effects

execute if score neoray_move nautmath_var matches 1 unless score neoray_speed nautmath_var matches ..0 at @s run function nauthack:neoray/raytick_recursive