execute store result score neotimer_time nautmath_var run data get entity @s data.neotimer.time
scoreboard players add neotimer_time nautmath_var 1
execute store result entity @s data.neotimer.time int 1.0 run scoreboard players get neotimer_time nautmath_var

execute if score neotimer_time nautmath_var matches 0 run function #nauthack:neotimer/exe