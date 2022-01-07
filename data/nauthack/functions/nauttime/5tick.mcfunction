scoreboard players set nauttime_tick nautmath_var 0

scoreboard players add nauttime_5tick nautmath_var 1

#for functions, executing every 5 ticks
function #nauthack:nauttime/5tick

execute if score nauttime_5tick nautmath_var matches 4 run function nauthack:nauttime/second