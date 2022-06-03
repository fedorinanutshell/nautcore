scoreboard players add neoid_max nautmath_var 1
scoreboard players operation @s neoid = neoid_max nautmath_var
tag @s add neoid

execute if entity @s[type = minecraft:marker] run function nauthack:neoid/bind_self
execute unless entity @s[type = minecraft:marker] run function nauthack:neoid/bind

tellraw @a[tag = neoid_checklog] {"text": "New entity ", "color": "light_green", "extra": [{"selector": "@s", "italic": true, "color": "gold"}, {"text": " logged by neoid system with ID: "}, {"score": {"name": "@s", "objective": "neoid"}}]}