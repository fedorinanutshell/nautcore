scoreboard players set actualtime_minute nautmath_var 0
scoreboard players add actualtime_hour nautmath_var 1
execute if score actualtime_hour nautmath_var matches 24 run function nauthack:actualtime/day