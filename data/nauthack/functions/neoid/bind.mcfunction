execute in nauthack:blackworld run summon minecraft:marker 0 0 0 {Tags: ["neoid_bound", "neoid_init"]}

scoreboard players operation @e[tag = neoid_init] neoid_bind = @s neoid
execute as @e[tag = neoid_init] store result entity @s data.id int 1 run scoreboard players get @s neoid

tag @e[tag = neoid_init] remove neoid_init