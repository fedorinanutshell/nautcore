#recursive function executing unless nautray_power goes under 0

function #nauthack:nautray/effects

function nauthack:nautray/condition

scoreboard players remove nautray_power nautmath_var 1
tp ^ ^ ^0.25

execute if score nautray_move nautmath_var matches 1 at @s anchored feet run function nauthack:nautray/raycycle