scoreboard players set nauttime_5tick nautmath_var 0

scoreboard players add nauttime_second nautmath_var 1

function #nauthack:nauttime/second

execute if score nauttime_second nautmath_var matches 10 run function nauthack:nauttime/10second