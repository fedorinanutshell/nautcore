execute unless entity @s[tag=nautray_raystarted] run scoreboard players set nautray_raypower nautmath_var 256
execute unless entity @s[tag=nautray_raystarted] run data modify storage nauthack:nauthack nautray.id set value {default: true}
execute unless entity @s[tag=nautray_raystarted] run function nauthack:nautray/startray