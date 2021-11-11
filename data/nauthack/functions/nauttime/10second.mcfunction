scoreboard players set nauttime_second nautmath_var 0

scoreboard players add nauttime_10second nautmath_var 1

function #nauthack:nauttime/10second

execute if score nauttime_10second nautmath_var matches 6 run function nauthack:nauttime/minute