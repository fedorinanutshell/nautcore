execute store result score nauttimer_score nautmath_var run data get storage nauthack:nauthack nauttimer.datacopy[0].score
scoreboard players add nauttimer_score nautmath_var 1
execute if score nauttimer_score nautmath_var matches 0 run function #nauthack:nauttimer
execute store result storage nauthack:nauthack nauttimer.datacopy[0].score long 1.0 run scoreboard players get nauttimer_score nautmath_var

data modify storage nauthack:nauthack nauttimer.newdata append from storage nauthack:nauthack nauttimer.datacopy[0]
data remove storage nauthack:nauthack nauttimer.datacopy[0]

scoreboard players operation nauttimer_left nautmath_var -= 1 nautmath_var
execute unless score nauttimer_left nautmath_var matches 0 run function nauthack:nauttimer/tick_recursive