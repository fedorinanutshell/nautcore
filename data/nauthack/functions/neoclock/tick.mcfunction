scoreboard players add neoclock_tick nautmath_var 1

scoreboard players operation neoclock_tick_0 nautmath_var = neoclock_tick nautmath_var
scoreboard players operation neoclock_tick_0 nautmath_var %= 20 nautmath_var

scoreboard players operation neoclock_second nautmath_var = neoclock_tick nautmath_var
scoreboard players operation neoclock_second nautmath_var /= 20 nautmath_var

scoreboard players operation neoclock_second_0 nautmath_var = neoclock_second nautmath_var
scoreboard players operation neoclock_second_0 nautmath_var %= 60 nautmath_var

scoreboard players operation neoclock_minute nautmath_var = neoclock_second nautmath_var
scoreboard players operation neoclock_minute nautmath_var /= 60 nautmath_var

scoreboard players operation neoclock_minute_0 nautmath_var = neoclock_minute nautmath_var
scoreboard players operation neoclock_minute_0 nautmath_var %= 60 nautmath_var

scoreboard players operation neoclock_hour nautmath_var = neoclock_minute nautmath_var
scoreboard players operation neoclock_hour nautmath_var /= 60 nautmath_var

scoreboard players operation neoclock_hour_0 nautmath_var = neoclock_hour nautmath_var
scoreboard players operation neoclock_hour_0 nautmath_var %= 24 nautmath_var

scoreboard players operation neoclock_day nautmath_var = neoclock_hour nautmath_var
scoreboard players operation neoclock_day nautmath_var /= 24 nautmath_var

execute if score neoclock_tick_0 nautmath_var matches 0 run function nauthack:neoclock/second