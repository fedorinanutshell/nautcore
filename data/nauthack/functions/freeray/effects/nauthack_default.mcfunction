execute if data storage nauthack:nauthack freeray.databuffer.args.nauthack_default run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.0 1 force
execute if data storage nauthack:nauthack freeray.databuffer.args.nauthack_default facing entity @p eyes run tp ^ ^ ^0.5
execute if data storage nauthack:nauthack freeray.databuffer.args.nauthack_default if entity @a[distance = ..2] run scoreboard players set freeray_power nautmath_var 0