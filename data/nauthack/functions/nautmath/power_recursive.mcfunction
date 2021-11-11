scoreboard players operation nautmath_power_buffer nautmath_var *= nautmath_power_base nautmath_var
scoreboard players operation nautmath_power_power nautmath_var -= 1 nautmath_var
execute unless score nautmath_power_power nautmath_var matches 0 run function nauthack:nautmath/power_recursive