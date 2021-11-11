scoreboard players set actualtime_tick nautmath_var 0
scoreboard players add actualtime_second nautmath_var 1
execute if score actualtime_second nautmath_var matches 60 run function nauthack:actualtime/minute