scoreboard players set nautmath_sqrt_test nautmath_var 0
execute unless score nautmath_sqrt_base nautmath_var matches ..0 run function nauthack:nautmath/sqrt_recursive
scoreboard players operation nautmath_sqrt_result nautmath_var = nautmath_sqrt_test nautmath_var