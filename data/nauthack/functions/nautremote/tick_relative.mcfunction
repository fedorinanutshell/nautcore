scoreboard players set nautremote_remote nautmath_var 0
function #nauthack:nautremote/condition

execute at @s if score nautremote_remote nautmath_var matches 1 run function nauthack:nautremote/remote

execute at @s unless block ~ ~-0.0625 ~ #nauthack:non_solid unless score nautremote_remote nautmath_var matches 1.. run function nauthack:nautremote/store_previous