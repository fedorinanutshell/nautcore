#checks whether or not stop ray, possibly can do other funny things

scoreboard players set asyncray_move nautmath_var 1
execute unless block ~ ~ ~ #nauthack:semi_transparent run scoreboard players set asyncray_move nautmath_var 0
execute if entity @e[distance = ..1, type = !#nauthack:nocoll] run scoreboard players set asyncray_move nautmath_var 0
execute if score asyncray_power nautmath_var matches ..0 run scoreboard players set asyncray_move nautmath_var 0

function #nauthack:asyncray/condition