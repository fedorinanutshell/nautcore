scoreboard players add nauttime_tick nautmath_var 1

execute if score nauttime_tick nautmath_var matches 5 run function nauthack:nauttime/5tick

execute unless score nauttime_odd nautmath_var matches 1 run scoreboard players set nauttime_odd nautmath_var 2
execute if score nauttime_odd nautmath_var matches 1 run scoreboard players set nauttime_odd nautmath_var 0
execute if score nauttime_odd nautmath_var matches 2 run scoreboard players set nauttime_odd nautmath_var 1

execute if score nauttime_odd nautmath_var matches 1 unless score nauttime_odd_odd nautmath_var matches 1 run scoreboard players set nauttime_odd_odd nautmath_var 2
execute if score nauttime_odd nautmath_var matches 1 if score nauttime_odd_odd nautmath_var matches 1 run scoreboard players set nauttime_odd_odd nautmath_var 0
execute if score nauttime_odd nautmath_var matches 1 if score nauttime_odd_odd nautmath_var matches 2 run scoreboard players set nauttime_odd_odd nautmath_var 1