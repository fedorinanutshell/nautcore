function #nauthack:nautray/effect

execute unless block ~ ~ ~ #nauthack:semi_transparent run scoreboard players set nautray_raypower nautmath_var 0
scoreboard players operation nautray_raypower nautmath_var -= 1 nautmath_var
execute at @s anchored feet run tp ^ ^ ^1

execute if score nautray_raypower nautmath_var > 0 nautmath_var at @s anchored feet run function nauthack:nautray/raycycle