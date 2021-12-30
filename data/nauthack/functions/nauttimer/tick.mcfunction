scoreboard players set nauttimer_left nautmath_var 0
scoreboard players operation nauttimer_left nautmath_var = nauttimer_maxid nautmath_var
data modify storage nauthack:nauthack nauttimer.datacopy set from storage nauthack:nauthack nauttimer.data
data modify storage nauthack:nauthack nauttimer.newdata set value []

execute unless score nauttimer_left nautmath_var matches 0 run function nauthack:nauttimer/tick_recursive
data modify storage nauthack:nauthack nauttimer.data set from storage nauthack:nauthack nauttimer.newdata