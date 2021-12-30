data modify storage nauthack:nauthack nauttimer.buffer set value {}

scoreboard players add nauttimer_maxid nautmath_var 1
execute store result storage nauthack:nauthack nauttimer.buffer.id long 1.0 run scoreboard players get nauttimer_maxid nautmath_var
execute store result storage nauthack:nauthack nauttimer.buffer.score long 1.0 run scoreboard players get nauttimer_startscore nautmath_var
data modify storage nauthack:nauthack nauttimer.buffer.args set from storage nauthack:nauthack nauttimer.args

data modify storage nauthack:nauthack nauttimer.data append from storage nauthack:nauthack nauttimer.buffer